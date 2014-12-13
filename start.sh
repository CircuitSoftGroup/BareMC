#!/bin/sh
 BINDIR=$(dirname "$(readlink -fn "$0")")
 cd "$BINDIR"
 java -Xmx1750M -XX:+UseConcMarkSweepGC -XX:+DisableExplicitGC -server -jar spigot.jar