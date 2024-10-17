# Repositories
# To get the repo's baseurls run:
# cat /etc/yum.repos.d/rpmfusion-nonfree.repo

repo --name="brave-browser" --baseurl=https://brave-browser-rpm-release.s3.brave.com/$basearch

# repo --name="rpmfusion-free" --baseurl=http://download1.rpmfusion.org/free/fedora/releases/$releasever/Everything/$basearch/os/
# repo --name="rpmfusion-nonfree" --baseurl=http://download1.rpmfusion.org/nonfree/fedora/releases/$releasever/Everything/$basearch/os/


%packages

brave-browser

fragments
fastfetch

# steam
# obs-studio

%end