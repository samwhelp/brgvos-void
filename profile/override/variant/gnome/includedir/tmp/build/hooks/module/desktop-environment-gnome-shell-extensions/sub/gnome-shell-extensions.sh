

sub_gnome_shell_extension_install () {

	echo "Gnome Shell Extensions Installing..."

	sub_gnome_shell_extension_remove_default

	sub_gnome_shell_install_gnome_extensions_cli

	sub_gnome_shell_extension_install_portal

	sub_gnome_shell_extension_move_from_rootuser_to_system

	sub_gnome_shell_extension_schemas_create_directory

	sub_gnome_shell_extension_schemas_compile

	sub_gnome_shell_extension_config_permission


}





sub_gnome_shell_extension_remove_default () {

	##
	## ## delete default extensions installed
	##

	echo "Delete some default extensions installed"

	rm -rf /usr/share/gnome-shell/extensions/auto-move-windows@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/apps-menu@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/launch-new-instance@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/native-window-placement@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/places-menu@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/windowsNavigator@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/workspace-indicator@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/light-style@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/system-monitor@gnome-shell-extensions.gcampax.github.com
	rm -rf /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com


}


sub_gnome_shell_install_gnome_extensions_cli () {

	##
	## ## install gext global to be used for enable the extensions
	## ## is not used to install because leave dev and proc mounted on $ROOTFS and the mklive crash
	##

	echo "Install 'gnome-extensions-cli' global to be used for enable the extensions"
	pipx install gnome-extensions-cli --global

}


sub_gnome_shell_extension_install_portal () {

	sub_gnome_shell_extension_install_first_version

}


sub_gnome_shell_extension_install_first_version () {

	##
	## ## install extensions first version
	##

	echo "Install extensions from includedir"

	gnome-extensions install --force /tmp/extensions/ProxySwitcherflannaghan.com.v25.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/VitalsCoreCoding.com.v73.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/accent-gtk-themebrgvos.v8.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/accent-icons-themebrgvos.v4.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/accent-user-themebrgvos.v3.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/appindicatorsupportrgcjonas.gmail.com.v61.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/arcmenuarcmenu.com.v69.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/blur-my-shellaunetx.v70.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/caffeinepatapon.info.v58.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/clipboard-indicatortudmotu.com.v69.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/customize-ibushollowman.ml.v92.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/dash-to-dockmicxgx.gmail.com.v102.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/dash-to-paneljderose9.github.com.v72.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/dingrastersoft.com.v80.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/light-dark-cursor-themebrgvos.v2.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/lockkeysvaina.lt.v63.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/logomenuaryan_k.v38.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/mediacontrolscliffniff.github.com.v40.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/radiokayradokaton.com.v7.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/set-notification-positionbrgvos.v3.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/simple-weatherromanlefler.com.v4.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/space-barluchrioh.v34.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/tiling-assistantleleat-on-github.v53.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/tilingshellferrarodomenico.com.v59.shell-extension.zip
	gnome-extensions install --force /tmp/extensions/user-themegnome-shell-extensions.gcampax.github.com.v64.shell-extension.zip


}


sub_gnome_shell_extension_install_second_version () {

	##
	## ## install extensions this was second version but is intercative - I leave as example
	##

	unzip -q /tmp/extensions/blur-my-shellaunetx.v68.shell-extension.zip -d /usr/share/gnome-shell/extensions/

	## ## work also but crash mklive because can't unmount the dev and proc remain accesated by dbus
	gext -F install blur-my-shell@aunetx


}


sub_gnome_shell_extension_move_from_rootuser_to_system () {

	##
	## ## move estension from rootuser to system
	##

	echo "Move estension from 'root' user to system '/usr/share/gnome-shell/extensions/'"


	mv /root/.local/share/gnome-shell/extensions/ProxySwitcher@flannaghan.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/accent-gtk-theme@brgvos /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/accent-icons-theme@brgvos /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/accent-user-theme@brgvos /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/arcmenu@arcmenu.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/blur-my-shell@aunetx /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/caffeine@patapon.info /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/customize-ibus@hollowman.ml /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/ding@rastersoft.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/light-dark-cursor-theme@brgvos /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/lockkeys@vaina.lt /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/logomenu@aryan_k /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/radiokayra@dokaton.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/set-notification-position@brgvos /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/simple-weather@romanlefler.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/space-bar@luchrioh /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/tiling-assistant@leleat-on-github /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/tilingshell@ferrarodomenico.com /usr/share/gnome-shell/extensions/
	mv /root/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com  /usr/share/gnome-shell/extensions/


}


sub_gnome_shell_extension_schemas_create_directory () {

	##
	## ## Create directory schemas for extensions
	##

	echo "Create directory schemas for extensions"


	mkdir -p /usr/share/gnome-shell/extensions/ProxySwitcher@flannaghan.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/Vitals@CoreCoding.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/accent-gtk-theme@brgvos/schemas
	mkdir -p /usr/share/gnome-shell/extensions/accent-icons-theme@brgvos/schemas
	mkdir -p /usr/share/gnome-shell/extensions/accent-user-theme@brgvos/schemas
	mkdir -p /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/arcmenu@arcmenu.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas
	mkdir -p /usr/share/gnome-shell/extensions/caffeine@patapon.info/schemas
	mkdir -p /usr/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/customize-ibus@hollowman.ml/schemas
	mkdir -p /usr/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/ding@rastersoft.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/light-dark-cursor-theme@brgvos/schemas
	mkdir -p /usr/share/gnome-shell/extensions/lockkeys@vaina.lt/schemas
	mkdir -p /usr/share/gnome-shell/extensions/logomenu@aryan_k/schemas
	mkdir -p /usr/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/radiokayra@dokaton.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/set-notification-position@brgvos/schemas
	mkdir -p /usr/share/gnome-shell/extensions/simple-weather@romanlefler.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/space-bar@luchrioh/schemas
	mkdir -p /usr/share/gnome-shell/extensions/tiling-assistant@leleat-on-github/schemas
	mkdir -p /usr/share/gnome-shell/extensions/tilingshell@ferrarodomenico.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas
	mkdir -p /usr/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com/schemas


}


sub_gnome_shell_extension_schemas_compile () {


	##
	## ## Compile schemas for extensions
	##

	echo "Compile schemas for extensions"

	glib-compile-schemas /usr/share/gnome-shell/extensions/ProxySwitcher@flannaghan.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/Vitals@CoreCoding.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/accent-gtk-theme@brgvos/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/accent-icons-theme@brgvos/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/accent-user-theme@brgvos/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/arcmenu@arcmenu.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/caffeine@patapon.info/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/customize-ibus@hollowman.ml/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/ding@rastersoft.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/light-dark-cursor-theme@brgvos/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/lockkeys@vaina.lt/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/logomenu@aryan_k/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/set-notification-position@brgvos/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/simple-weather@romanlefler.com/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/space-bar@luchrioh/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/tiling-assistant@leleat-on-github/schemas
	glib-compile-schemas /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas


}


sub_gnome_shell_extension_config_permission () {

	##
	## ## add permissions to the user to read extensions
	##

	echo "Add permissions to the user to read extensions"

	chmod -R 755 /usr/share/gnome-shell/extensions/


}
