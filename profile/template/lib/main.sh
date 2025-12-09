
main_iso_build_portal () {

	mod_iso_build_via_void_mklive


	## Run sync to be sure the file was finished to written
	info_msg "Run sync to be sure the file was finished to written"
	sync

	## Final message
	printf "Next files exist in 'dist' directory:\n${dist_root_dir_path}\n"

}


mod_iso_build_via_void_mklive () {

	## core start
	info_msg "## Building via void-mklive"

	## change working directory
	info_msg "Change working directory to 'void-mklive'"
	cd "${void_mklive_dir_path}"


	# Run void linux script to build iso file image
	info_msg "## Now I run 'mkiso.sh' with the flags prepared before"
	sudo ./mkiso.sh \
		-a ${opt_arch} \
		-b ${opt_variant} \
		-L ${opt_locale} \
		-- \
		-k ${opt_keymap} \
		-B ${opt_variant} \
		-l ${opt_locale} \
		-e ${opt_root_shell} \
		-v ${opt_linux_version} \
		-I "${opt_includedir}" \
		-o "${opt_iso_file_name}" \
		-T "${opt_title}" \
		-p "${opt_package_install}" \
		-S "${opt_service}" \
		-C "${opt_kernel_args}"


	mod_iso_build_move_iso_file_to_dist_folder "${opt_iso_file_name}"


	## Leave `void-mklive` directory
	info_msg "Change working directory to 'template'"
	cd "${OLDPWD}"


}


mod_iso_build_move_iso_file_to_dist_folder () {

	local iso_file_name="${1}"
	local iso_file_path="$(pwd)/${iso_file_name}"

	local file_hash=""

	if [ -e "${iso_file_path}" ]; then
		echo "${iso_file_path}"

		## Create hash file and move the files to `dist` directory
		info_msg "Create hash file and move the files to 'dist' directory"

		file_hash="$(sha256sum "${iso_file_name}")"
		echo ${file_hash} > "${iso_file_path}.sha256"

		## Run sync to be sure the file was finished to written
		info_msg "Run sync to be sure the file was finished to written"
		sync

		## Move the files to 'dist' directory
		info_msg "Move the files to 'dist' directory"
		mv "${iso_file_path}" "${dist_root_dir_path}/"
		mv "${iso_file_path}.sha256" "${dist_root_dir_path}/"

		echo
		info_msg "File:"
		echo "${dist_root_dir_path}/${iso_file_name}"
		echo "${dist_root_dir_path}/${iso_file_name}.sha256"
		echo

		##
		## tips
		##
		info_msg "Please check 'dist' directory"
		echo "cd ${dist_root_dir_path}"
		echo

	else

		echo "File ${iso_file_path} not exist, so not create the sha256 file for this"

	fi


}
