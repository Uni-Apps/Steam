app=Steam.Ubuntu
image=ubuntu:latest
bin=`echo "$app" | awk '{print tolower($0)}'`

distrobox create --name $app --home ~/.uni/hyper/distrobox/HOME/$app --image $image

distrobox enter $app

distrobox-export --app $bin
