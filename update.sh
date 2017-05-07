#!/bin/bash
# hol die aktuelle liste an tags vom git server
echo "Fetching latest version information..."
git fetch --tags

# was ist der neueste tag vom git server?
TAG_LATEST=$( git tag -l | tail -n 1 )

# was ist der tag von dem jetzigen code?
TAG_CURRENT=$( git describe --tags )

echo "current=$TAG_CURRENT, latest=$TAG_LATEST"
# -> wenn die beiden nicht gleich sind, dann gibts ein update

if [ "$TAG_CURRENT" == "$TAG_LATEST" ]; then
    echo "Ghoust is already the latest version."
else
    echo "A newer version is available!"

    # Update with '--update arg'
    if [ "$1" != "--update" ]; then
        echo "use '$0 --update' to execute the update"
        exit 1
    else
        echo "update"
    fi
fi

echo "x"

#git reset --hard
#git merge tags/<tagname>
