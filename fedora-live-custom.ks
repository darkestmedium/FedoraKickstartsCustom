# Maintained by the Fedora Workstation WG:
# http://fedoraproject.org/wiki/Workstation
# mailto:desktop@lists.fedoraproject.org

# Official kickstarts
%include ./fedora-kickstarts/fedora-live-base.ks

# Custom kickstarts
%include fedora-core.ks
%include fedora-devel.ks
%include fedora-additional.ks
%include fedora-nvidia.ks

timezone Europe/Warsaw

#
# Disable this for now as packagekit is causing compose failures
# by leaving a gpg-agent around holding /dev/null open.
#
#include snippets/packagekit-cached-metadata.ks

# Needs to be increased if more packages are added
part / --size 7386

# Repositories

# network  --bootproto=dhcp --device=link --activate
# System services
services --enabled="NetworkManager,ModemManager,sshd,bluetooth"


# Bootflags

# For AMD CPU's https://www.reddit.com/r/linux/comments/15p4bfs/amd_pstate_and_amd_pstate_epp_scaling_driver/
# amd_pstate_epp - new fully autonomous power managment
# amd_pstate=guided - somehow controllable by the user if you want to use sm like auto-cpufreq
#                     and turn turbo boost off.
#
# For Nvidia drivers:
# rd.driver.blacklist=nouveau modprobe.blacklist=nouveau - if you don't want the mesa driver

bootloader --location=none --append="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau"


%packages
gnome-initial-setup
anaconda-webui
%end


%post
# set livesys session type
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys

%end
