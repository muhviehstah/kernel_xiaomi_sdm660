export ARCH=arm64
export PATH=/usr/lib/colorgcc/bin/:/usr/lib/ccache/bin:/home/timo/aarch64-linux-android/bin:$PATH
export CROSS_COMPILE=aarch64-opt-linux-android-
export USE_CCACHE=1
rm -rf out
mkdir out
rm -rf tools/zip/extracted/modules/*
make O=out whyred_defconfig
make O=out -j5
#make O=out INSTALL_MOD_PATH=../tools/zip/extracted/modules/ modules_install 
cp out/arch/arm64/boot/Image.gz-dtb tools/zip/extracted/
#mkdir -p tools/zip/extracted/modules/system/lib/modules
