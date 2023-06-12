FROM ubuntu:16.04

WORKDIR /app
RUN apt -y update && apt -y upgrade && apt -y install git clang make autoconf autopoint libtool cmake golang wget libssl-dev && git clone https://github.com/nezha-dt/nezha

WORKDIR /app/nezha
RUN git checkout v0.1
RUN sed -i 's/git clone ${LF_ST} ${SRC_LIBS}\/libFuzzer 2>\/dev\/null/git clone ${LF_ST} ${SRC_LIBS}\/libFuzzer \&\& pushd ${SRC_LIBS}\/libFuzzer \&\& git reset --hard HEAD~ \&\& popd/' utils/build_helpers/build_dependencies.sh utils/build_helpers/build_sslcert.sh
RUN bash ./utils/build_helpers/setup.sh

CMD ["bash"]
