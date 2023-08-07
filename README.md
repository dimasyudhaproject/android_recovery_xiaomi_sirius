# OrangeFox Recovery Project for MI 8 SE (Sirius)

![OrangeFox Recovery Project](banner.png)

This repository is dedicated to the OrangeFox Recovery Project for the Xiaomi MI 8 SE (Sirius). This recovery allows you to install custom ROMs, root your device, back up your entire device, and much more. The main aim of this project is to provide a stable recovery with many features for the users.

## Table of Contents
- [Features](#features)
- [Build Instructions](#build-instructions)
- [Installation](#installation)
- [Reporting Bugs](#reporting-bugs)
- [Contributing](#contributing)
- [Contributors](#contributors)
- [Support](#support)
- [License](#license)

## Features

OrangeFox Recovery provides a plethora of features including, but not limited to:

- Full Touch support
- Fully Deodexed
- OTA support
- Full system-as-root (SAR) compatibility
- Built-in support for installing init.d functionality
- ADB root
- And many more.

**For a comprehensive list of features, please visit the [OrangeFox website](https://orangefox.download/).**

## Build Instructions

Before you start, make sure you have all the necessary packages to build the OrangeFox Recovery for your device. Follow the steps below:

1. Install required packages:
```bash
sudo apt-get install -y git aria2 curl
bash <(curl -s https://gitlab.com/OrangeFox/misc/scripts/-/raw/master/setup/android_build_env.sh)
bash <(curl -s https://gitlab.com/OrangeFox/misc/scripts/-/raw/master/setup/install_android_sdk.sh)
```
2. Create a directory and synchronize the source:
```bash
mkdir -p ~/ofox
git clone https://gitlab.com/OrangeFox/sync.git -b master sync
cd sync
sudo ./orangefox_sync.sh --branch 12.1 --path ~/ofox
```
3. Clone the device and kernel trees:
```bash
cd ~/ofox
git clone https://github.com/dimasyudhatech/android_recovery_xiaomi_sirius.git -b android-12.1 device/xiaomi/sirius
git clone https://github.com/dimasyudhatech/android_kernel_xiaomi_sirius.git -b lineage-20 kernel/xiaomi/sirius
```
4. Initialize the environment and start the build process:
```bash
export OFOX=true
. build/envsetup.sh
lunch twrp_sirius-eng
mka adbd recoveryimage -j$(nproc --all)
```
If the build process is successful, the final recovery image should be in the `out/target/product/sirius` directory.

## Installation

Please follow the instructions in the [official guide](https://wiki.orangefox.tech/books/orangefox-recovery/page/installing-orangefox-recovery) to install OrangeFox Recovery.

## Reporting Bugs

Report bugs to [OrangeFox Recovery Project bug tracking](https://github.com/OrangeFoxRecovery/bugtracker).

Remember to provide as much info as possible. The more info you provide, the more likely that the bug will be solved.

## Contributing

If you would like to contribute to the development of this project, please follow the [Contribution Guidelines](CONTRIBUTING.md).

## Contributors

This project exists thanks to all the people who contribute. 

- [@reallysnow](https://t.me/reallysnow)
- [@SebaUbuntu](https://t.me/SebaUbuntu)
- [@erwinabs](https://t.me/erwinabs)
- [@sksanju0910](https://t.me/sksanju0910)
- [@SpideyOS](https://t.me/SpideyOS)
- [@DarthJabba9](https://t.me/DarthJabba9)
- [@QIH47](https://t.me/QIH47)

## Support

For additional support, join our [Telegram group](https://t.me/OrangeFoxChat).

## License

OrangeFox Recovery Project is licensed under the [GPLv3](https://opensource.org/licenses/gpl-3.0.html).

```
Copyright (C) 2023 Android Open Source Project
Copyright (C) 2023 TeamWin Recovery Project
Copyright (C) 2023 OrangeFox Recovery Project
Copyright (C) 2023 Dimas Yudha Pratama

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation.
```