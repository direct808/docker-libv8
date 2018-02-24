FROM ubuntu as build

RUN apt-get update
RUN apt-get install -y --no-install-recommends software-properties-common
RUN add-apt-repository ppa:pinepain/libv8-6.6
RUN apt-get update
RUN apt-get install -y --no-install-recommends libv8-6.6  libv8-6.6-dev


FROM scratch

COPY --from=build /opt/libv8-6.6/ /v8/