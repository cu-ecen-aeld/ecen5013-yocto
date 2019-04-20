# Overview 

This project demonstrates a yocto build starter environment for University of Colorado course [ECEN 5013 Advanced Embedded System Development](https://sites.google.com/colorado.edu/ecen5013/home).

# Setting Up the First Build

After cloning the repository, run the `./install_ubuntu.sh` script to setup an Ubuntu 18.04 installation for build.

## Optional Step
For faster builds, add these lines to poky/build/conf/local.conf
```
     SSTATE_MIRRORS = "\
     file://.* http://sstate.yoctoproject.org/dev/PATH;downloadfilename=PATH \n \
     file://.* http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH \n \
     file://.* http://sstate.yoctoproject.org/2.6/PATH;downloadfilename=PATH \n \
     "
```

# Builds
Run 
```
./build.sh
```

# Running In The Emulator
Run
```
./start_qemu.sh
```

Use root with no password as login
