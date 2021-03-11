#!/bin/bash

# mt6768 autopatcher by henloboi 202103040948 GMT+0

ROOTDIR=$(realpath .)

mtkr() {
    git clone --depth=1 --single-branch https://github.com/PixelExperience/device_mediatek_sepolicy device/mediatek/sepolicy 
    git clone --depth=1 --single-branch https://github.com/PixelExperience/vendor_mediatek_interfaces vendor/mediatek/interfaces 
    git clone --depth=1 --single-branch https://github.com/PixelExperience/vendor_mediatek-opensource vendor/mediatek/opensource
    git clone --depth=1 --single-branch https://github.com/Redmi-MT6768/android_vendor_mediatek_ims vendor/mediatek/ims 
}

mtkr 
cd $ROOTDIR

echo "patch done !"
