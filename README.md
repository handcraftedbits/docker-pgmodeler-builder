# pgModeler Builder [![Docker Pulls](https://img.shields.io/docker/pulls/handcraftedbits/pgmodeler-builder.svg?maxAge=2592000)](https://hub.docker.com/r/handcraftedbits/pgmodeler-builder)

A [Docker](https://www.docker.com) container that allows you to build [pgModeler](https://pgmodeler.io/) with one
simple command.

# Features

This container currently produces binaries for Windows x86_64 only. Other platforms are forthcoming.

# Usage

Simply run the `handcraftedbits/pgmodeler-builder` image, specifying an output volume, mapped to the container
directory `/opt/pgmodeler` (where binaries will be saved) and the version to build (corresponding to a valid tag in the
[pgModeler Git repository](https://github.com/pgmodeler/pgmodeler) repository). For example, to build pgModeler
version `0.9.2` and store the result in `/mnt/windows/pgmodeler`:

```bash
docker run -v /mnt/windows/pgmodeler:/opt/pgmodeler handcraftedbits/pgmodeler-builder v0.9.2
```

If you run the command without specifying a version the container script will for latest valid pgModeler version.

Simply run the `pgmodeler.exe` executable stored in your output directory. That's it!
