#!/usr/bin/env bash



ROOTFS="${1}"



#if [ "$VARIANT" = gnome ]; then

    print_step "Prepare GNOME desktop..."
    # print the path for $ROOTFS
    info_msg "List the working path"
    echo $ROOTFS
    # delete default extensions installed
    info_msg "Delete some default extensions installed"
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/auto-move-windows@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/apps-menu@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/launch-new-instance@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/native-window-placement@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/places-menu@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/windowsNavigator@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/workspace-indicator@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/light-style@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/system-monitor@gnome-shell-extensions.gcampax.github.com
    chroot "$ROOTFS" rm -rf /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com

    # install gext global to be used for enable the extensions
    # is not used to install because leave dev and proc mounted on $ROOTFS and the mklive crash
    info_msg "Install 'gnome-extensions-cli' global to be used for enable the extensions"
    chroot "$ROOTFS" pipx install gnome-extensions-cli --global

    # install extensions first version
    info_msg "Install extensions from includedir"
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/ProxySwitcherflannaghan.com.v25.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/VitalsCoreCoding.com.v73.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/accent-gtk-themebrgvos.v8.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/accent-icons-themebrgvos.v4.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/accent-user-themebrgvos.v3.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/appindicatorsupportrgcjonas.gmail.com.v61.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/arcmenuarcmenu.com.v69.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/blur-my-shellaunetx.v70.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/caffeinepatapon.info.v58.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/clipboard-indicatortudmotu.com.v69.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/customize-ibushollowman.ml.v92.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/dash-to-dockmicxgx.gmail.com.v102.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/dash-to-paneljderose9.github.com.v72.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/dingrastersoft.com.v80.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/light-dark-cursor-themebrgvos.v2.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/lockkeysvaina.lt.v63.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/logomenuaryan_k.v38.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/mediacontrolscliffniff.github.com.v40.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/radiokayradokaton.com.v7.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/set-notification-positionbrgvos.v3.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/simple-weatherromanlefler.com.v4.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/space-barluchrioh.v34.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/tiling-assistantleleat-on-github.v53.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/tilingshellferrarodomenico.com.v59.shell-extension.zip
    chroot "$ROOTFS" gnome-extensions install --force /tmp/extensions/user-themegnome-shell-extensions.gcampax.github.com.v64.shell-extension.zip

    # install extensions this was second version but is intercative - I leave as example
    #chroot "$ROOTFS" unzip -q /tmp/extensions/blur-my-shellaunetx.v68.shell-extension.zip -d /usr/share/gnome-shell/extensions/

    # work also but crash mklive because can't unmount the dev and proc remain accesated by dbus
    #chroot "$ROOTFS" gext -F install blur-my-shell@aunetx

    # move estension from user to system
    info_msg "Move estension from 'root' user to system '/usr/share/gnome-shell/extensions/'"
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/ProxySwitcher@flannaghan.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/accent-gtk-theme@brgvos /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/accent-icons-theme@brgvos /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/accent-user-theme@brgvos /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/arcmenu@arcmenu.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/blur-my-shell@aunetx /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/caffeine@patapon.info /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/customize-ibus@hollowman.ml /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/ding@rastersoft.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/light-dark-cursor-theme@brgvos /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/lockkeys@vaina.lt /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/logomenu@aryan_k /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/radiokayra@dokaton.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/set-notification-position@brgvos /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/simple-weather@romanlefler.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/space-bar@luchrioh /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/tiling-assistant@leleat-on-github /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/tilingshell@ferrarodomenico.com /usr/share/gnome-shell/extensions/
    chroot "$ROOTFS" mv /root/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com  /usr/share/gnome-shell/extensions/

    # create directory schemas for extensions
    info_msg "Create directory schemas for extensions"
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/ProxySwitcher@flannaghan.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/Vitals@CoreCoding.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/accent-gtk-theme@brgvos/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/accent-icons-theme@brgvos/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/accent-user-theme@brgvos/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/arcmenu@arcmenu.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/caffeine@patapon.info/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/customize-ibus@hollowman.ml/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/ding@rastersoft.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/light-dark-cursor-theme@brgvos/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/lockkeys@vaina.lt/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/logomenu@aryan_k/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/radiokayra@dokaton.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/set-notification-position@brgvos/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/simple-weather@romanlefler.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/space-bar@luchrioh/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/tiling-assistant@leleat-on-github/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/tilingshell@ferrarodomenico.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas
    chroot "$ROOTFS" mkdir -p /usr/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com/schemas

    # compile schemas for extensions
    info_msg "Compile schemas for extensions"
   chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/ProxySwitcher@flannaghan.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/Vitals@CoreCoding.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/accent-gtk-theme@brgvos/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/accent-icons-theme@brgvos/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/accent-user-theme@brgvos/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/arcmenu@arcmenu.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/caffeine@patapon.info/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/customize-ibus@hollowman.ml/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/ding@rastersoft.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/light-dark-cursor-theme@brgvos/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/lockkeys@vaina.lt/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/logomenu@aryan_k/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/mediacontrols@cliffniff.github.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/set-notification-position@brgvos/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/simple-weather@romanlefler.com/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/space-bar@luchrioh/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/tiling-assistant@leleat-on-github/schemas
    chroot "$ROOTFS" glib-compile-schemas /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas

    # add permissions to the user to read extensions
    info_msg "Add permissions to the user to read extensions"
    chroot "$ROOTFS" chmod -R 755 /usr/share/gnome-shell/extensions/

    # extract Fluent icons and Fluent cursors
    info_msg "Extract Fluent icons and Fluent cursors"
    chroot "$ROOTFS" tar -Jxf /tmp/icons/01-Fluent.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-cursors.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-dark-cursors.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-green.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-grey.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-orange.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-pink.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-purple.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-red.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-teal.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/Fluent-yellow.tar.xz -C /usr/share/icons

    # extract MacTahoe icons and MacTahoe cursors
    info_msg "Extract MacTahoe icons and MacTahoe cursors"
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-blue-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-blue-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-blue.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-cursors.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-dark-cursors.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-green-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-green-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-green.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-grey-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-grey-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-grey.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-nord-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-nord-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-nord.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-orange-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-orange-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-orange.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-purple-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-purple-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-purple.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-red-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-red-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-red.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-yellow-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-yellow-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe-yellow.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/MacTahoe.tar.xz -C /usr/share/icons

    # extract WhiteSur icons
    info_msg "Extract WhiteSur icons"
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-green-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-green-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-green.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-grey-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-grey-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-grey.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-nord-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-nord-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-nord.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-orange-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-orange-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-orange.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-pink-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-pink-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-pink.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-purple-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-purple-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-purple.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-red-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-red-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-red.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-yellow-dark.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-yellow-light.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur-yellow.tar.xz -C /usr/share/icons
    chroot "$ROOTFS" tar -Jxf /tmp/icons/WhiteSur.tar.xz -C /usr/share/icons

    # extract Fluent themes
    info_msg "Extract Fluent themes"
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-teal.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/Fluent-round.tar.xz -C /usr/share/themes

    # extract MacTahoe themes
    info_msg "Extract MacTahoe themes"
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-nord.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-nord.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-solid.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Dark.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-nord.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-nord.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-solid.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/MacTahoe-Light.tar.xz -C /usr/share/themes

    # extract WhiteSur themes
    info_msg "Extract WhiteSur themes"
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-solid.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Dark.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-blue.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-green.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-grey.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-orange.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-pink.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-purple.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-red.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-solid.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light-yellow.tar.xz -C /usr/share/themes
    chroot "$ROOTFS" tar -Jxf /tmp/themes/WhiteSur-Light.tar.xz -C /usr/share/themes

    # add custom icon for arcmenu
    info_msg "Add BRGV-OS icon for arcmenu"
    chroot "$ROOTFS" cp /tmp/icons/brgvos-logo.svg /usr/share/gnome-shell/extensions/arcmenu@arcmenu.com/icons/

    # update dconf settings for extensions
    info_msg "Update dconf settings for extensions"
    chroot "$ROOTFS" dconf update

    # setup flathub
    info_msg "Setup flathub"
    chroot "$ROOTFS" flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

    # set plymouth theme for BRGV-OS
    info_msg "Set plymouth theme for BRGV-OS"
    chroot "$ROOTFS" plymouth-set-default-theme -R brgvos

    sleep 10
#fi
