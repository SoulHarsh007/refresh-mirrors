# refresh-mirrors

Just some convenient shortcuts for running the `rate-mirrors` tool (https://github.com/westandskif/rate-mirrors) for RebornOS. This is *NOT* a fork, but just a wrapper for shortcuts that call the tool. A `.desktop` entry and a *Systemd* service are created as a part of the installation.

> **Note**: The below instructions are intended to work only on **RebornOS**

## Build and install from source on RebornOS

1. Clone the repository:
``` bash
git clone https://gitlab.com/rebornos-team/applications/refresh-mirrors.git
```

2. Change to the project base directory:
``` bash
cd refresh-mirrors
```

3. Build and install the package:
``` bash
sh scripts/build_archlinux_package.sh --install
```

Run `./scripts/build.sh` on a terminal. This will build the package from the `PKGBUILD`, create package files for *Arch Linux*, and install the application for you.

## Test using the given .pkg.tar.zst files

> **Note**: If you have followed the section *"Build"*, you can skip to Step 4.

1. Download the distributed `.tar.zst` file and `.tar.zst.sig` files.

2. Install `rate-mirrors` by running the below command on a terminal

```bash
yay -S rate-mirrors
```

3. Install the package by running the below commands on a terminal (after removing the old `refresh-mirrors` application)

```bash
sudo pacman -R refresh-mirrors
sudo pacman -U --noconfirm refresh-mirrors*.pkg.tar.zst
```

### Desktop Entry

4. Run "Refresh RebornOS and ArchLinux Mirrors" from the launcher.

### Systemd Services

5. Run the below command on the terminal:

```bash
sudo systemctl restart refresh-mirrors
```
