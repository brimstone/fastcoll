fastcoll
========

MD5 collision generator v1.5
by Marc Stevens (http://www.win.tue.nl/hashclash/)

This is the source to fastcoll-v1.0.0.5-1.zip and a docker container to match.

Usage
-----

Something like:
```
$ docker run --rm -it -v $PWD:/work -w /work -u $UID:$GID brimstone/fastcoll --prefixfile input -o msg1.bin msg2.bin
```
