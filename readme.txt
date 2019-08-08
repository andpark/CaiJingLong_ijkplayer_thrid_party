Change module:

cd config
rm module.sh
##link your module
#ln -s module-rtsp.sh module.sh

Android:

cd android/contrib
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh all
cd ..
./compile-ijk.sh all


IOS:

refer http://www.cnblogs.com/XYQ-208910/p/5856815.html

cd ios
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh all

open IJKMediaPlayer with Xcode
build release-iphoneos
build release-iphonesimulator
cd .//Library/Developer/Xcode/DerivedData/IJKMediaPlayer-dothnfjqbjyrilhdirinxnesavaz/Build/Products/
lipo -create Release-iphoneos/IJKMediaFramework.framework/IJKMediaFramework Release-iphonesimulator/IJKMediaFramework.framework/IJKMediaFramework -output IJKMediaFramework
