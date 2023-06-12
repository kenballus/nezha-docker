# nezha-docker
[NEZHA](https://ieeexplore.ieee.org/abstract/document/7958601) doesn't run on modern systems, and this is a problem because it's a pretty fundamental differential fuzzing paper.

This is a Dockerfile that clones and builds the original NEZHA code, guaranteed working as of June 2023.

To build, run `docker build .`
To launch a shell with everything ready to start [the NEZHA examples](https://github.com/nezha-dt/nezha/tree/v0.1/examples/src/apps/helloworld), run `docker run $DOCKER_HASH`, where `$DOCKER_HASH` is the image hash from the build step.
