# FedoraKickstartsCustom

**Wrapping repository** for the original Fedora kickstart files: [Fedora Kickstarts](https://pagure.io/fedora-kickstarts)

This is a customized Fedora build based on a stripped-down GNOME Workstation release. It provides a bare minimum GNOME desktop environment with networking, Wi-Fi, some basic GNOME apps, shell extensions, and optional NVIDIA drivers (which you can easily disable).

### Additional Packages Include:
- Brave Browser
- VS Code
- GitHub Desktop
- C++ Development Environment

## How to Use:
First you need to install sudo `dnf install livecd-tools`

### Clone the Repository:
```
git clone https://github.com/darkestmedium/FedoraKickstartsCustom.git && cd ./FedoraKickstartsCustom
```


### For VS Code Users:
You can build the ISO using the VS Code tasks by pressing **Ctrl + Shift + B**, selecting **"Build ISO"**, and waiting for it to finish. Afterward, you can burn/copy it to a USB drive with the **"Burn to USD Drive"**.

### Without VS Code:
You can manually run the following shell commands: **(Replace $inputFields with actual names.)**
```
sudo livecd-creator \
  --config=./fedora-live-custom.ks \
  --releasever=${input:releaseServer} \
  --fslabel=Fedora-${input:isoLabel}-${input:releaseServer} \
  --tmpdir=./Temp \
  --cache=./Cache/Live \
  --verbose
```

### Burn the ISO to a USB:
```
sudo dd \
	if=${input:inputFile} \
	of=${input:outputFile} \
	bs=4M status=progress
```

And don't forget to have fun.