sudo apt update
# sudo apt upgrade
sudo apt install -y libcurl4-openssl-dev libplist-dev libzip-dev openssl libssl-dev libusb-1.0-0-dev libreadline-dev build-essential git make automake libtool pkg-config
git clone https://github.com/libimobiledevice/libirecovery
git clone https://github.com/libimobiledevice/idevicerestore
git clone https://github.com/libimobiledevice/usbmuxd
git clone https://github.com/libimobiledevice/libimobiledevice
git clone https://github.com/libimobiledevice/libusbmuxd
git clone https://github.com/libimobiledevice/libplist

cd libplist && ./autogen.sh --without-cython && sudo make install && cd ..
cd libusbmuxd && ./autogen.sh && sudo make install && cd ..
cd libimobiledevice && ./autogen.sh --without-cython && sudo make install && cd ..
cd usbmuxd && ./autogen.sh && sudo make install && cd ..
cd libirecovery && ./autogen.sh && sudo make install && cd ..
cd idevicerestore && ./autogen.sh && sudo make install && cd ..
sudo ldconfig
