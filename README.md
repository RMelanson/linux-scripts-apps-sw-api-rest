# Package linux-scripts-apps-sw-api-rest<img src="./images/Rest1.png" width="6%" align= "right">
- - - -
### Table of Contents <img src="./images/dir3.png" width="7%" align= "right">
You're sections headers will be used to reference location of destination.

- [CopyRight ©](#CopyRight)
- [Repository](#Repository)
- [About](#About)
- [Installation](#Installation)
- [Contents](#Contents)
- [Running the Package](#Running-the-Package)
- [Video Tutorial](#Video-Tutoria)
- [About the Author](#About-the-Author)
- - - -
### <b>Package linux-scripts-apps-sw-api-rest CopyRight** ©</b> <img src="./images/policeman.png" width="6%" align= "right">

- This program is free for re-distribution provided this copyright/license header is left in place.  
- There is no warranty or guaranty of any kind in any way and is not assured to be as required and may not work exactly as designed for all os systems operating various potentially conflicting software.  
- It is recommended to read the contents of the scripts to be assured of the installation process and what will be installed. 
- The user is free to modify the code as required. 
- There may not be an associated uninstal script, so uninstalling is the owners responsibility.
- It is recommended to be installed on a test system in a test environment before promoting to a production environment.<img src="https://github.com/RMelanson/linux-scripts-bootstraps/blob/master/images/caution.png" width="6%" align= "right">
### <b>**Install at your own Risk</b>
- - - -
### Repository<img src="./images/repository.png" width="6%" align= "right">
- https://github.com/RMelanson/linux-scripts-apps-sw-api-rest
- - - -
### About<img src="./images/aboutMickey.png" width="6%" align= "right">
- Version: 1.0.0
- Release Date: May 06 2018
- Purpose: swBootstrap.sh is a simplified installation package for ...
- Description: swApiBootstrap.sh.sh is a  bootstrap utility for downloading and installing.  swApiBootstrap.sh may be installed as a bootstrap or after the Linux system has been launched. 
- The swApiBootstrap.sh is used to download the Stock Widgets API from the git repository for Stock Widget development.
- - - -
### Installation<img src="./images/installation.png" width="7%" align= "right">
- Execute the swBootstrap.sh.sh*, upon installation of a new Linux installation as a bootstrap or as a stand alone bash script. If executing the script manually on a Linux O.S. after downloading from the git repository, be sure to:
  - execute as root ./swBootstrap.sh.sh
  - or as user with sudo access sudo ./swBootstrap.sh.sh
- *Notes: 
    - Default script installation packages are installed under /tmp/scripts/apps/SW/API/REST directory and may be analyzed in that directory.
    - You may modify the script installation file (swBootstrap.sh.sh) to change the directory package installation location.
    - Upon Completion of installation, the installation directory and all contents may be removed.
- - - -
### Pakage Contents <img src="./images/contents.png" width="6%" align= "right">

- [README.md](./README.md) ~ Readme file
- [swAPIBootstrap.sh](./swAPIBootstrap.md)  ~ Installs the package
- [setup.sh](./setup.sh) - is the master setup file for package installation and may be run directly as root ./setup.sh, or as user with sudo access sudo
  - env/
    - [setEnv](./env/setEnv.sh) ~ Sets the environment for Stock Widgets to install and run
    - [.alias](./env/.alias) ~ Sets the environment aliases for Stock Widget managenent
  - install/
    - [addPkgUser($user $group $home $pkg)](./install/addPkgUser.sh) ~ Add user,group,home for application package Stock Widgets
    - [install_EOD_TestData.sh](./install/install_EOD_TestData.sh) ~ Install Stock Widgets Test Data
    - [jbossBootstrap](./install/jbossBootstrap.sh) ~ Install JBOSS
    - [configureSwApp](./install/configureSwApp.sh) ~ Configure JBOSS to run Stock Widgets
    - [deploySwWarApps](./install/deploySwWarApps.sh) ~ Deploy the Stock Widget Rest API and Web WAR Apps to JBOSS
   - ** Note: Work is on going and package may not be stable or even usable.
- - - -
### Running the Package<img src="./images/running.png" width="6%" align= "right">
It is recommended to read the contents of the scripts to be assured of the installation process and what will be installed.  There may not be an associated uninstalling script, so uninstalling is the owners responsibility.
- There are two ways to install any of the packages listed under contents as file Format Type (swBootstrap.sh.sh).
  - 1. Upon installation of a new Linux installation as a bootstrap simply add the file to the Linux initialization bootstrap.
  - 2. If executing the script manually on a Linux after the O.S. has been installed, be sure to
       - execute as root ./swBootstrap.sh.sh
       - or as user with sudo access sudo ./swBootstrap.sh.sh
- - - -
### Video Tutorial<img src="./images/video.png" width="7%" align= "right">
- Video Tutorial Hyper Link comming soon...
- - - - -
### About the Author
![Author Image](https://github.com/RMelanson/profile/blob/master/RobinPhoto.jpg)
- Name: Robin Melanson
- email: robin.e.melanson@gmail.com

[Back To The Top](#Package-Linux-scripts-bootstraps)
