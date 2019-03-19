FROM handcraftedbits/pgmodeler-builder-postgres:latest
MAINTAINER HandcraftedBits <opensource@handcraftedbits.com>

COPY data /

WORKDIR /opt
ENTRYPOINT ["/bin/bash", "src/script/build.sh"]

