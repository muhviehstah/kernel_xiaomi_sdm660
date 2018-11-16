export ARCH=arm64
export CXX=/home/timo/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++
export CC=/home/timo/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/bin/clang
#export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=aarch64-linux-gnu-
export HOSTCC=$CC
rm -rf out
mkdir out
make ARCH=$ARCH CC=$CC CXX=$CXX CROSS_COMPÌLE=$CROSS_COMPILE HOSTCC=$HOSTCC O=out whyred_defconfig
make ARCH=$ARCH CC=$CC CXX=$CXX CROSS_COMPÌLE=$CROSS_COMPILE HOSTCC=$HOSTCC O=out -j5
