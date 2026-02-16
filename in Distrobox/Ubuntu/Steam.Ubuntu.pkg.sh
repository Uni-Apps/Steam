app=Steam.Ubuntu
image=ubuntu:latest
bin=`echo "$app" | awk '{print tolower($0)}'`

distrobox create --name $app --home ~/.uni/hyper/distrobox/HOME/$app --image $image

distrobox enter $app

installYay(){
  echo https://github.com/Unicorn-OS/ArchLinux.Knowledge/blob/main/Package%20Manager/AUR/Yay/readme.md
}

echo """
[multilib]
Include = /etc/pacman.d/mirrorlist
""" | sudo tee -a /etc/pacman.conf

sudo pacman -Sy

sudo pacman -S steam

distrobox-export --app $bin
