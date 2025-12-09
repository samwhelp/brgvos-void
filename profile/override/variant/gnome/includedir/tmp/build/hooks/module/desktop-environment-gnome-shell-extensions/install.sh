#/usr/bin/env bash


## path
base_dir_path="$(dirname "$(realpath "${0}")")"
plan_dir_path="$(realpath "${base_dir_path}/../..")"


## init
. "${plan_dir_path}/lib/init.sh"


## check for root permissions.
check_root_user_required


## args
. "${plan_dir_path}/lib/args.sh"


## sub
. "${base_dir_path}/sub/init.sh"


## info
echo "run: ${0}"


## mod
mod_gnome_shell_install () {

	echo "Gnome Shell Extension Installing..."

	sub_gnome_shell_extension_install

	sys_dconf_update


}



## main
__main__ () {

	mod_gnome_shell_install

}

__main__
