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
  sys-apps/lm-sensors

emerge \
  x11-misc/sddm \
  kde-apps/konsole \
  kde-plasma/plasma-meta \
  kde-plasma/sddm-kcm \
  kde-plasma/plasma-workspace \
  kde-plasma/discover \
  kde-apps/dolphin

emerge \
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
  www-client/chromium \
  net-p2p/transmission \
  net-ftp/filezilla \
  net-p2p/bitcoin-qt \
  media-video/obs-studio \
  app-containers/docker \
  app-containers/docker-cli

emerge net-misc/dropbox

systemctl enable NetworkManager

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
