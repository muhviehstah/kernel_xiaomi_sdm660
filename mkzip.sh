#rm -rf tools/zip/extracted/modules/*
#mkdir tools/zip/extracted/modules/4.4.163-InsigniuX-LA.UM.7.2.r1-05200-x8.1-Muhmod
#cp out/modules* tools/zip/extracted/modules/
#cp out/modules* tools/zip/extracted/modules/4.4.163-InsigniuX-LA.UM.7.2.r1-05200-x8.1-Muhmod/
#find out -name *.ko -exec cp {} tools/zip/extracted/modules/ \; 
#find out -name *.ko -exec cp {} tools/zip/extracted/modules/4.4.163-InsigniuX-LA.UM.7.2.r1-05200-x8.1-Muhmod/ \;
rm tools/zip/flashable/InsigniuX-LA.UM.7.2.r1-05200-x8.1-Muhmod.zip
#cp out/arch/arm64/boot/Image.gz-dtb tools/zip/extracted/
cd tools/zip/extracted
zip -r9 ../flashable/InsigniuX-LA.UM.7.2.r1-05200-x8.1-Muhmod.zip *
cd ../../../

