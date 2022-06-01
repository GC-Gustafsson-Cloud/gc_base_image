FROM ubuntu:20.04 AS build

COPY ./setup /setup
WORKDIR /setup

RUN chmod +x ./setup.sh && ./setup.sh && rm ./setup.sh
RUN useradd -ms /bin/bash hannes

FROM scratch
COPY --from=build / /

USER hannes
WORKDIR /home/hannes
ENTRYPOINT [ "/bin/bash" ]