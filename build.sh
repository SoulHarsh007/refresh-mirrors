makepkg -f --noextract \
&& sudo pacman -U --noconfirm *.pkg.tar.zst \
&& gpg --detach-sign --use-agent *.pkg.tar.zst