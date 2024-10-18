# Repositories

repo --name="rpmfusion-nonfree-updates" --baseurl=http://download1.rpmfusion.org/nonfree/fedora/updates/$releasever/$basearch/


%packages

# Dependencies
akmods

# Drivers
akmod-nvidia
xorg-x11-drv-nvidia-cuda

# Optional VAAPI/VDPAU Drivers 
# nvidia-vaapi-driver
# libva-utils
# vdpauinfo

%end


%post

akmods --force
dracut --force
chkconfig akmods on

%end