# refresh-mirrors

Just some convenient shortcuts for running the [rate-mirrors](https://github.com/westandskif/rate-mirrors) tool for RebornOS. This is _NOT_ a fork, but just a wrapper for shortcuts that call the tool. A `.desktop` entry and a SystemD service are created as a part of the installation.

> **Note**: The below instructions are intended to work only on **RebornOS**

## Build and install from source on RebornOS

1. Clone the repository:

```sh
git clone https://github.com/RebornOS-Developers/refresh-mirrors.git
```

2. Change to the project base directory:

```sh
cd refresh-mirrors
```

3. Build the package using makepkg:

```sh
# This is just an example, you may pass any other command line arguments if you want to.
makepkg -si
```

## Test

### On a terminal

Run the script:

```sh
sudo refresh-mirrors.sh
```

### Desktop Entry

Run "Refresh RebornOS and ArchLinux Mirrors" from the launcher.

### Systemd Services

Run the below command on the terminal:

```sh
sudo systemctl restart refresh-mirrors
```
