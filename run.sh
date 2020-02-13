#!/bin/sh
GAMEID="${1:-minetest}"
WORLDNAME="${2:-world}"
/usr/bin/minetestserver --config /root/.minetest/minetest.conf --gameid $GAMEID --worldname $WORLDNAME