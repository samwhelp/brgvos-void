# BRGV-OS

**BRGV-OS** is a custom [Void Linux](https://voidlinux.org/) based distribution that aims to facilitate developers, researchers and users to transitioning from Windows to Linux by maintaining familiar operational habits and workflows.  
This work was do it for our job needs at Gene Bank research institute from Suceava, Romania, but anyone can modify for their needs.  
The name **BRGV** is an acronym from Romanian "**B**anca de **R**esurse **G**enetice **V**egetale" (shortly in English Gene Bank), and **OS** mean, of course, **O**perating **S**ystem.  
  
|                     Theme Light                                     |                         Theme Dark                               |
|:-------------------------------------------------------------------:|:----------------------------------------------------------------:|
|![BRGV-OS Light](./screenshots/screeshot_1.png "BRGV-OS Light Theme")|![BRGV-OS Dark](./screenshots/screenshot_1_dark.png "BRGV-OS Dark Theme")|

|                                                        |                                                        |
|:------------------------------------------------------:|:------------------------------------------------------:|
|![BRGV-OS 1](./screenshots/screenshot_2.png "BRGV-OS 1")|![BRGV-OS 2](./screenshots/screenshot_3.png "BRGV-OS 2")|

**BRGV-OS** have now 10 themes, 2 for users what prefers Windows style and 8 for the user what prefers Mac style, look at next movie:  
    

[<img src="https://img.youtube.com/vi/YwH5UtWPND8/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/YwH5UtWPND8?autoplay=1&mute=1)|

## How to build

It is suggested to use Void Linux or others based by this distribution, also **BRGV-OS** work :)  
Default start the build for Romanian language, if you wish to build for international English USA language edit file `locale` and change from `ro_RO.UTF-8` to `en_US.UTF-8` and also edit file `keymap` and change from `ro` to `us.  
That's it.  
If you wish to build for your language, take a look at file `build_brgvos.sh` how I do it from English USA language and Romanian language. 
To build the iso image, it is necessary to use a Void Linux distribution or **BRGV-OS** where we run next commands:  

```bash
git clone --remote-submodules https://github.com/florintanasa/brgvos-void.git
cd brgvos-void
sudo ./build_brgvos.sh
```  
  
After that, if everything works ok, we find the iso image is in directory `iso build`.
  
> [!IMPORTANT]  
> In this moment the build is for ro_RO (Romanian language) and en_US (English USA language) , but with few modifications can be buildid for anothers.  
> Exist iso images files for: ro_RO.UTF-8 and en_US.UTF-8.  
> ISO files can be downloaded from:  
> here for **ro_RO** versions [![Download BRGV-OS en_US version](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/brgv-os/files/brgv-os-2025/ro_RO/BRGV-OS_gnome_ro_RO.UTF-8_x86_64_22082025_162548.iso/download)  
> or  
> here for **en_US** version [![Download BRGV-OS en_US version](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/brgv-os/files/brgv-os-2025/en_US/BRGV-OS_gnome_en_US.UTF-8_x86_64_22082025_164014.iso/download)  
    
Test the ISO file in virtual machine.
Next videos is a example...  

|    Installation in Romanian   |   Change the theme by accent color and scheme color    |Installation in English  |
|:-----------------------------:|:------------------------------------------------------:|:------------------------:|
|[<img src="https://img.youtube.com/vi/QVdH_dGIyOQ/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/QVdH_dGIyOQ?autoplay=1&mute=1)|[<img src="https://img.youtube.com/vi/HZfKh0V6aOo/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/HZfKh0V6aOo?autoplay=1&mute=1)|[<img src="https://img.youtube.com/vi/SnHjbCFt-qw/maxresdefault.jpg" width="400" height="280"/>](https://www.youtube.com/embed/SnHjbCFt-qw?autoplay=1&mute=1)|  
  

## First time update and upgrade the packages

Since it is a rolling (continuous) distribution, it is necessary that, the first time we login to update and upgrade the packages:  

```bash
sudo xbps-install -Su
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

or we can use `gnome-software` Application Gui.

|                        OctoXBPS                             |                        Applications                           |
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

## License

This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE](LICENSE) file for details

## Warning 

The open-source software included in **BRGV-OS** is distributed in the hope that it will be useful, but **WITHOUT ANY WARRANTY**.

The work is in progress..

<!-- https://github.com/scopatz/nanorc -->
