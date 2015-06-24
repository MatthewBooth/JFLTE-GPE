# Linux

Welcome to the dark side! Let's get started in building this ROM.

1. Open the terminal and install some essential parts to compile this ROM with the following command:

```bash
sudo apt-get install -y build-essential kernel-package libncurses5-dev bzip2 openjdk-7-jdk openjdk-7-jre git p7zip-full unzip zip unrar rar schedtool bison curl flex gnupg gperf libesd0-dev liblz4-tool libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev
```

2. Now make a folder for the ROM to go in

```bash
	mkdir -p ~/android/JFLTE-GPE
```

3. Ok, now we will clone some repositories for the ROM, including this one, using this command sequence:-

```bash
	cd ~/android/JFLTE-GPE
	git clone -b GED-5.0 --single-branch https://github.com/MatthewBooth/JFLTE-GPE ROM
	git clone -b GED-5.0 --single-branch https://github.com/MatthewBooth/JFLTE-GPE-Kernel Kernel
	git clone -b GED-5.0 --single-branch https://github.com/MatthewBooth/JFLTE-GPE-Ramdisk Ramdisk
	git clone -b master https://github.com/Christopher83/arm-cortex_a15-linux-gnueabihf-linaro_4.9 Christopher83_Linaro_4.9.3
```

4. Now we can build, by doing the following

```bash
	cd ~/android/JFLTE-GPE/ROM
	./build
```

You can choose from a range of options, but #1 will build the ROM for you and create a folder here "~/android/JFLTE-GPE/out" where you can find your ROM to flash
