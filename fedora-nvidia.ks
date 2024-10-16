# Repositories
repo --name="rpmfusion-nonfree" --baseurl=http://download1.rpmfusion.org/nonfree/fedora/releases/$releasever/Everything/$basearch/os/


%packages

# NVIDIA !!!
akmod-nvidia
xorg-x11-drv-nvidia-cuda

%end
