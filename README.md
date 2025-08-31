# BRGV-OS ![Downloads total  BRGV-OS](https://img.shields.io/sourceforge/dt/brgv-os.svg)

**BRGV-OS** is a custom [Void Linux](https://voidlinux.org/) based distribution that aims to facilitate developers, researchers and users to transitioning from Windows to Linux by maintaining familiar operational habits and workflows.  
This work was do it for our job needs at Gene Bank research institute from Suceava, Romania, but anyone can modify for their needs.  
The name **BRGV** is an acronym from Romanian "**B**anca de **R**esurse **G**enetice **V**egetale" (shortly in English Gene Bank), and **OS** mean, of course, **O**perating **S**ystem.  
  
|                     Theme Light                                     |                         Theme Dark                               |
|:-------------------------------------------------------------------:|:----------------------------------------------------------------:|
|![BRGV-OS Light](./screenshots/screeshot_1.png "BRGV-OS Light Theme")|![BRGV-OS Dark](./screenshots/screenshot_1_dark.png "BRGV-OS Dark Theme")|

|                                                        |                                                        |
|:------------------------------------------------------:|:------------------------------------------------------:|
|![BRGV-OS 1](./screenshots/screenshot_2.png "BRGV-OS 1")|![BRGV-OS 2](./screenshots/screenshot_3.png "BRGV-OS 2")|

**BRGV-OS** have now 10 themes, 2 for users what prefers Windows style and 8 for the users what prefers Mac style, look at next movie:  
    

[<img src="https://img.youtube.com/vi/EDnMTKS-B8k/maxresdefault.jpg" width="960" height="510"/>](https://www.youtube.com/embed/EDnMTKS-B8k?autoplay=1&mute=1)

For theme management I wrote the following extensions, scripts and menus:

* [Accent gtk theme](https://extensions.gnome.org/extension/8497/accent-gtk-theme/), it is a Gnome extension that changes the gtk app theme, based on the accent color chosen by the user in Gnome Settings, Appearance screen and by preferred color schema Light or Dark, source code [here](https://github.com/florintanasa/accent-gtk-theme);
* [Accent icons theme](https://extensions.gnome.org/extension/8499/accent-icons-theme/), it is a Gnome extension that changes the icons themes, based on the accent color chosen by the user in Gnome Settings (gnome-control-center), Appearance screen and by preferred color schema Light or Dark, source code [here](https://github.com/florintanasa/accent-icons-theme);
* [Accent user theme](https://extensions.gnome.org/extension/8498/accent-user-theme/), it is a Gnome extension that changes the user's theme based on the accent color chosen by the user in Gnome Settings, Appearance screen and by preferred color schema Light or Dark, source code [here](https://github.com/florintanasa/accent-user-theme);
* [Light/Dark cursor theme](https://extensions.gnome.org/extension/8496/lightdark-cursor-theme/), it is a Gnome extension that changes the cursor themes, based on the preferred color schema Light or Dark, source code [here](https://github.com/florintanasa/light-dark-cursor-theme);
* And 10 [scripts](https://github.com/florintanasa/brgvos-void/tree/main/includedir/usr/local/bin), these are called by 10 [menus](https://github.com/florintanasa/brgvos-void/tree/main/includedir/usr/local/share/applications).
  
Also **BRGV-OS** have another extension [Set Notification Banner Position](https://extensions.gnome.org/extension/8495/set-notification-banner-position/), it is a Gnome extension that changes the position of the banner notification on the sreen, source code [here](https://github.com/florintanasa/set-notification-position).

## How to build

It is suggested to use **Void Linux** or others based by this distribution, also **BRGV-OS** work :)  
Default start the build for Romanian language, if you wish to build for international English USA language edit file `locale` and change from `ro_RO.UTF-8` to `en_US.UTF-8` and also edit file `keymap` and change from `ro` to `us`.  
That's it.  
If you wish to build for your language, take a look at file `build_brgvos.sh` how I do it from English USA language and Romanian language.
To build the iso image, it is necessary to use a based **Void Linux** distribution or **BRGV-OS** (is a spin **Void Linux**) where we run next commands:  

```bash
git clone --recurse-submodules https://github.com/florintanasa/brgvos-void.git
cd brgvos-void
sudo ./build_brgvos.sh
```  
  
After that, if everything works ok, we find the iso image is in directory `iso build`.
  
> [!IMPORTANT]  
> In this moment the build is for ro_RO (Romanian language) and en_US (English USA language) , but with few modifications can be buildid for anothers.  
> Exist iso images files for: ro_RO.UTF-8 and en_US.UTF-8.  
> ISO files can be downloaded from:  
> here [![Download BRGV-OS iso ro_RO version](https://img.shields.io/sourceforge/dm/brgv-os.svg)](https://sourceforge.net/projects/brgv-os/files/brgv-os-2025/ro_RO/BRGV-OS_gnome_ro_RO.UTF-8_x86_64_28082025_102305.iso/download) for **ro_RO** versions   
> or  
> here [![Download BRGV-OS iso en_US version](https://img.shields.io/sourceforge/dm/brgv-os.svg)](https://sourceforge.net/projects/brgv-os/files/brgv-os-2025/en_US/BRGV-OS_gnome_en_US.UTF-8_x86_64_28082025_095553.iso/download) for **en_US** version   
> and  
> SHA256 files can be downloaded from:  
> here [![Download BRGV-OS sha256 ro_RO version](https://img.shields.io/sourceforge/dm/brgv-os.svg)](https://sourceforge.net/projects/brgv-os/files/brgv-os-2025/ro_RO/BRGV-OS_gnome_ro_RO.UTF-8_x86_64_28082025_102305.sha256/download) for **ro_RO** versions  
> or  
> here [![Download BRGV-OS sha256 en_US version](https://img.shields.io/sourceforge/dm/brgv-os.svg)](https://sourceforge.net/projects/brgv-os/files/brgv-os-2025/en_US/BRGV-OS_gnome_en_US.UTF-8_x86_64_28082025_095553.sha256/download) for **en_US** version 
    
Test the ISO file in virtual machine.
Next videos is a example...  

|    Installation in Romanian   |   Change the theme by accent color and scheme color    |Installation in English  |
|:-----------------------------:|:------------------------------------------------------:|:------------------------:|
|[<img src="https://img.youtube.com/vi/QVdH_dGIyOQ/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/QVdH_dGIyOQ?autoplay=1&mute=1)|[<img src="https://img.youtube.com/vi/HZfKh0V6aOo/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/HZfKh0V6aOo?autoplay=1&mute=1)|[<img src="https://img.youtube.com/vi/SnHjbCFt-qw/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/SnHjbCFt-qw?autoplay=1&mute=1)|  
  

## First time update and upgrade the packages

Since it is a rolling (continuous) distribution, it is necessary that, the first time we login to update and upgrade the packages:  

```bash
sudo xbps-install -Syu
```

## NVIDIA driver
If we install NVIDIA driver we loose wayland session and remain only Xorg.
To install NVIDIA driver is necessary to add repository nonfree:  
```bash
sudo xbps-install -S void-repo-nonfree
# update the packages
sudo xbps-install -Su
# search for the drivers
xbps-query -Rs nvidia
# check your card at NVIDIA site https://www.nvidia.com/en-us/geforce/drivers/ what version of driver needs
# at mine 580, so the last driver is good
# install the driver
sudo xbps-install nvidia
```
Edit a conf file to tell the kernel do not load nouveau and load nvidia with some options and parameters:

```bash
sudo nano /etc/modprobe.d/nvidia.conf
```
and next lines and save:

```txt
# not load nouveau driver
blacklist nouveau
# set drm for nvidia
options nvidia-drm modeset=1
# without this I have black screen on console tty
options nvidia-drm fbdev=1
# preserve video memory after suspend
options nvidia NVreg_PreserveVideoMemoryAllocations=1
options nvidia NVreg_TemporaryFilePath=/var/tmp
```

After that the Plymouth not work.

## Enable your locale

ISO file en_US have only English USA locales enabled and the ISO file ro_RO, start with 28.08.2025, have ro_RO and en_US locales enabled.  
If you download en_US version, and if you wish to add your locale run next commands:
  
```bash
sudo nano /etc/default/libc-locales
# thn uncomment your locales language and save with Ctrl+s and quit with Ctrl+x
# reconfigure all packages
sudo xbps-reconfigure -a -f
# then is better to reboot
# now you can set Gnome your locale
# if you wish to set your language to be system language
# set LANG=xxxx în /etc/locale.conf
sudo nano /etc/locale.conf
# after this set your languages, expl. for Romanian language
# LANG=ro_RO.UTF-8
# then save with Ctrl+s and quit with Ctrl+x
# then reboot
```

## How to install applications

Using `xbs` packages manager:

* in console:

```bash
sudo xbps-install -S <name_package>
```

* or the GUI - OctoXBPS

Using `flatpak`:  
We can search the applications on https://flathub.org/ and then we can install manualy:

```bash
flatpak install flathub org.gnome.gitlab.somas.Apostrophe
```

or we can use `gnome-software` Software Gui.

|                        OctoXBPS                             |                        Software                           |
|:-----------------------------------------------------------:|:-------------------------------------------------------------:|
|![octoXBPS](./screenshots/screenshot_octoxbps.png "octoXBPS")|![Aplications](./screenshots/screenshot_app.png "Applications")|


Using `nix` packages manager:
```bash
# install nix packages manager
sudo xbps-install -S nix
# enable the nix service
sudo ln -s /etc/sv/nix-daemon /var/service/
# start the nix service
sudo sv up nix-daemon
# check the states of the services
sudo vsv
# load the profile without logout-login
source /etc/profile
# add the channels
nix-channel --add https://nixos.org/channels/nixpkgs-unstable unstable
nix-channel --add https://nixos.org/channels/nixos-25.05 nixpkgs
# update the chanels
nix-channel --update
# check the list with channels 
nix-channel --list
# add the dir were is nix application in .bash_profile
echo 'export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"' >> ~/.bash_profile
# add the dir were is nix application in .profile
echo 'export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"' >> ~/.profile
# example to install - pgmodeler
nix-env -iA nixpkgs.pgmodeler
# start the application
pgmodeler
```
Using `xbps-src` to install from sources.  
Some packages exist only in source repository, like google-chrome. 

```bash
git clone https://github.com/void-linux/void-packages.git
cd void-package
./xbps-src binary-bootstrap
# some packages is nonfree like google-chrome
echo XBPS_ALLOW_RESTRICTED=yes >> etc/conf
# build the package
./xbps-src pkg google-chrome  
# install the package
sudo xbps-install -R hostdir/binpkgs/nonfree google-chrome
```

## License

This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE](LICENSE) file for details

## Warning 

The open-source software included in **BRGV-OS** is distributed in the hope that it will be useful, but **WITHOUT ANY WARRANTY**.

## The following "ingredients" are also included in BRGV-OS

https://github.com/ohmybash/oh-my-bash  
https://github.com/scopatz/nanorc 
https://github.com/CarterLi/maple-font?tab=readme-ov-file  
https://github.com/Anduin2017/AnduinOS/tree/1.4/src/mods/20-deskmon-mod  
https://4kwallpapers.com/windows-11-stock-wallpapers/  
  
---
  
The work is in progress..


