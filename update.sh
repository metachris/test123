#!/bin/bash
# hol die aktuelle liste an tags vom git server
git fetch --tags

# was ist der neueste tag vom git server?
git tag -l | tail -n 1

# was ist der tag von dem jetzigen code?
git describe --tags

# -> wenn die beiden nicht gleich sind, dann gibts ein update
#git reset --hard
#git merge tags/<tagname>
