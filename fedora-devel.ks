# Repositories
repo --name="vscode" --baseurl=https://packages.microsoft.com/yumrepos/vscode
repo --name="github-desktop" --baseurl=https://mirror.mwt.me/shiftkey-desktop/rpm

%packages
kernel-devel

# Build Essential
git
clang
gcc-c++
make
cmake

# Vulkan
vulkan-tools
vulkan-loader-devel
vulkan-validation-layers-devel
glslang

# Other
code
github-desktop

livecd-tools

%end
