# refresh-mirrors

Just some convenient shortcuts for running the `rate-mirrors` tool (https://github.com/westandskif/rate-mirrors) for RebornOS. This is *NOT* a fork, but just a wrapper for shortcuts that call the tool. Two `.desktop` entries are created and two *Systemd* services are created as a part of the installation.

> **Note**: The below instructions are intended to work only on **RebornOS**

## Build

Run `./build.sh` on a terminal. This will build the package from the `PKGBUILD`, create package files for *Arch Linux*, and install the application for you.

## Test

> **Note**: If you have followed the section *"Build"*, you can skip to Step 4.

1. Download the distributed `.tar.zst` file and `.tar.zst.sig` files.

2. Install `rate-mirrors` by running the below command on a terminal

```bash
yay -S rate-mirrors
```

3. Install the package by running the below command on a terminal

```bash
sudo pacman -U refresh-mirrors*.pkg.tar.zst
```

### Desktop Entries

4. Run "Refresh RebornOS Mirrors" from the launcher.

5. Run "Refresh ArchLinux Mirrors" from the launcher.

### Systemd Services

6. Run the below command on the terminal:

```bash
sudo systemctl restart refresh-rebornos-mirrors
```

7. Run the below command on the terminal:

```bash
sudo systemctl restart refresh-archlinux-mirrors
```
