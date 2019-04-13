# Overview 

This project demonstrates a yocto build starter environment for University of Colorado course [ECEN 5013 Advanced Embedded System Development](https://sites.google.com/colorado.edu/ecen5013/home).

# First Run

Follow the instructions below to build the example image for ecen5013.  See [yocto quick build instructions](https://www.yoctoproject.org/docs/2.6/brief-yoctoprojectqs/brief-yoctoprojectqs.html) for background.  These instructions were tested on a Ubuntu 18.04 virtual machine

Start by cloning this repo, cd into the directory created after cloning, then run the commands below (or copy and paste them into the terminal window)
```
echo "Install essential host packages"
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
     xz-utils debianutils iputils-ping libsdl1.2-dev xterm
echo "Clone poky repository as a submodule"
git submodule init
git submodule sync
git submodule update
echo "cd into the poky directory"
pushd poky
echo "Initializing build environment"
source oe-init-build-env
echo "Starting bitbake... This will take a while!"
bitbake core-image-ecen5013
```

# Running In The Emulator
After sourcing the build environment setup script (source oe-init-build-env from the poky folder) use:
```
runqemu qemux86 nographic
```
