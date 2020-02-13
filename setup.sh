#!/bin/sh

newcontainer="$(buildah from scratch)"
mountpoint="$(buildah mount $newcontainer)"

zypper --installroot $mountpoint install --no-recommends -y minetestserver minetest-game

buildah run $newcontainer mkdir -p /root/.minetest/{client,games,mods,textures,worlds}

buildah copy $newcontainer ./run.sh /usr/bin
buildah copy $newcontainer ./minetest.conf /root/.minetest/

buildah run $newcontainer chmod +x /usr/bin/run.sh

buildah config --cmd /usr/bin/run.sh $newcontainer
buildah umount $newcontainer
buildah commit $newcontainer minetest-server

exit 0
