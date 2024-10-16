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

part / --size 16384

# Repositories

# network  --bootproto=dhcp --device=link --activate
# System services
services --enabled="NetworkManager,ModemManager,sshd"


%packages
gnome-initial-setup
anaconda-webui
%end


%post
# set livesys session type
sed -i 's/^livesys_session=.*/livesys_session="gnome"/' /etc/sysconfig/livesys

%end
