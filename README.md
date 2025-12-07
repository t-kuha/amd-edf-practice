# amd-edf-practice
Practice for AMD EDF (Embedded Design Framework)

- version: 2025.2
- target: Zynq MPSoC
- build environment: Ubuntu 24.04 (x86_64)

## how to

### generate SDT source

```shell
# run Vivado/Vitis tool setting in advance
$ sdtgen sdt.tcl
```

### build micro SD image

```shell
$ ./initial-setup.sh

$ cd yocto
$ source edf-init-build-env
# now in build directory

$ gen-machine-conf --template ../../src/ultra96.yaml --hw-description ../../hw_project_sdt/
# now conf/local.conf is updated

# build disk image
$ MACHINE=ultra96 bitbake edf-linux-disk-image

# build BOOT.bin
$ MACHINE=ultra96 bitbake xilinx-bootbin
```

***

## tips

```shell
# u-boot configuration
$ bitbake -c menuconfig u-boot-xlnx

# Kernel configuration
$ bitbake -c menuconfig linux-xlnx
```

***

## references

- [repo tool](https://gerrit.googlesource.com/git-repo/+/HEAD/README.md)
- [Operating System Integration and Development AMD ZynqMP™ device portfolio](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/3268149250/Operating+System+Integration+and+Development+AMD+ZynqMP+device+portfolio#Yocto-Project%E2%84%A2-build-setup-instructions-for-EDF)
