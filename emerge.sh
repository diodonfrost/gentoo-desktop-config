emerge dev-lang/python

emerge \
  net-analyzer/nmap \
  app-editors/vim \
  sys-process/htop \
  net-misc/whois \
  net-misc/curl \
  net-misc/wget \
  dev-vcs/git \
  app-shells/zsh \
  app-crypt/gnupg \
  dev-util/strace \
  sys-apps/plocate \
  sys-apps/hwinfo \
  app-portage/eix \
  sys-apps/lm-sensors \
  kde-apps/konsole \
  kde-plasma/plasma-meta \
  kde-plasma/sddm-kcm \
  kde-plasma/plasma-workspace \
  kde-plasma/discover \
  kde-apps/dolphin \
  dev-libs/libinput \
  x11-misc/sddm \
  x11-drivers/xf86-input-libinput \
  x11-terms/xterm \
  x11-base/xorg-server \
  x11-base/xorg-drivers \
  kde-apps/konsole \
  kde-apps/okular \
  kde-apps/spectacle \
  kde-apps/ark \
  kde-apps/gwenview \
  app-admin/keepassxc \
  app-admin/sudo \
  app-emulation/qemu \
  app-emulation/virt-manager \
  media-video/vlc \
  net-p2p/transmission \
  net-ftp/filezilla \
  net-p2p/bitcoin-qt \
  media-sound/pulseaudio \
  net-misc/openssh \
  net-vpn/tor \
  sys-kernel/linux-firmware \
  sys-apps/memtest86+ \
  media-sound/alsa-utils \
  media-sound/pavucontrol \
  kde-apps/kate \
  app-containers/docker \
  app-containers/docker-cli

systemctl enable NetworkManager
systemctl enable sddm
systemctl enable sshd
systemctl enable docker
systemctl enable libvirtd

emerge x11-drivers/nvidia-drivers

emerge app-eselect/eselect-repository
eselect repository enable brave-overlay
emaint sync -r brave-overlay
emerge brave-bin

eselect repository enable steam-overlay
emaint sync -r steam-overlay

emerge \
  net-misc/dropbox \
  net-im/discord-bin \
  media-sound/spotify

useradd violet
gpasswd -a larry wheel
gpasswd -a larry video
gpasswd -a larry audio
gpasswd -a larry usb
gpasswd -a larry kvm
gpasswd -a larry qemu
gpasswd -a larry docker
gpasswd -a larry pcap

emerge www-client/chromium
