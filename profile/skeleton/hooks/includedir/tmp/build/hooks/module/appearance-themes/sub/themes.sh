

sub_themes_install () {

	sub_themes_install_fluent_theme

	sub_themes_install_mactahoe_theme

	sub_themes_install_whitesur_theme

	sub_themes_install_custom_theme

	sub_themes_install_plymouth_theme


	return 0
}


sub_themes_install_fluent_theme () {

	sub_themes_install_fluent_theme_icon

	sub_themes_install_fluent_theme_gtk

}


sub_themes_install_fluent_theme_icon () {

	##
	## ## Extract Fluent icons and Fluent cursors
	##

	echo "Extract Fluent icons and Fluent cursors"

	tar -Jxf /tmp/icons/01-Fluent.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-cursors.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-dark-cursors.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-green.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-grey.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-orange.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-pink.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-purple.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-red.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-teal.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/Fluent-yellow.tar.xz -C /usr/share/icons


}


sub_themes_install_fluent_theme_gtk () {

	##
	## ## Extract Fluent themes
	##

	echo "Extract Fluent themes"

	tar -Jxf /tmp/themes/Fluent-round-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-teal.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/Fluent-round.tar.xz -C /usr/share/themes


}




sub_themes_install_mactahoe_theme () {

	sub_themes_install_mactahoe_theme_icon

	sub_themes_install_mactahoe_theme_gtk

}


sub_themes_install_mactahoe_theme_icon () {

	##
	## ## Extract MacTahoe icons and MacTahoe cursors
	##

	echo "Extract MacTahoe icons and MacTahoe cursors"

	tar -Jxf /tmp/icons/MacTahoe-blue-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-blue-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-blue.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-cursors.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-dark-cursors.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-green-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-green-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-green.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-grey-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-grey-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-grey.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-nord-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-nord-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-nord.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-orange-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-orange-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-orange.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-purple-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-purple-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-purple.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-red-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-red-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-red.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-yellow-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-yellow-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe-yellow.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/MacTahoe.tar.xz -C /usr/share/icons


}


sub_themes_install_mactahoe_theme_gtk () {

	##
	## ## Extract MacTahoe themes
	##

	echo "Extract MacTahoe themes"

	tar -Jxf /tmp/themes/MacTahoe-Dark-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-nord.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-nord.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-solid.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Dark.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-nord.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-nord.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-solid.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/MacTahoe-Light.tar.xz -C /usr/share/themes


}




sub_themes_install_whitesur_theme () {

	sub_themes_install_whitesur_theme_icon

	sub_themes_install_whitesur_theme_gtk

}


sub_themes_install_whitesur_theme_icon () {

	##
	## ## Extract WhiteSur icons
	##

	echo "Extract WhiteSur icons"

	tar -Jxf /tmp/icons/WhiteSur-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-green-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-green-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-green.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-grey-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-grey-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-grey.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-nord-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-nord-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-nord.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-orange-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-orange-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-orange.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-pink-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-pink-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-pink.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-purple-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-purple-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-purple.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-red-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-red-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-red.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-yellow-dark.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-yellow-light.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur-yellow.tar.xz -C /usr/share/icons
	tar -Jxf /tmp/icons/WhiteSur.tar.xz -C /usr/share/icons


}


sub_themes_install_whitesur_theme_gtk () {

	##
	## ## Extract WhiteSur themes
	##

	echo "Extract WhiteSur themes"

	tar -Jxf /tmp/themes/WhiteSur-Dark-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-solid.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Dark.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-blue.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-green.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-grey.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-orange.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-pink.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-purple.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-red.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-solid.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light-yellow.tar.xz -C /usr/share/themes
	tar -Jxf /tmp/themes/WhiteSur-Light.tar.xz -C /usr/share/themes


}




sub_themes_install_custom_theme () {

	sub_themes_install_custom_theme_icon

}


sub_themes_install_custom_theme_icon () {

	##
	## ## Add custom icon for arcmenu
	##

	echo "Add BRGV-OS icon for arcmenu"

	cp -f /tmp/icons/brgvos-logo.svg /usr/share/gnome-shell/extensions/arcmenu@arcmenu.com/icons/


}



sub_themes_install_plymouth_theme () {

	##
	## ## Set plymouth theme for BRGV-OS
	##

	echo "Set plymouth theme for BRGV-OS"

	plymouth-set-default-theme -R brgvos

}
