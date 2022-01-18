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

## Test

### On a terminal

1. Run the script: 
``` bash
sudo refresh-mirrors.sh
```

### Desktop Entry

2. Run "Refresh RebornOS and ArchLinux Mirrors" from the launcher.

### Systemd Services

3. Run the below command on the terminal:

```bash
sudo systemctl restart refresh-mirrors
```
