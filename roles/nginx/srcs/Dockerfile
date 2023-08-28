FROM debian:buster

ARG NG_PASSWD
ENV N_PASSWD=$NG_PASSWD

RUN apt update -y && apt install nginx -y
RUN echo $N_PASSWD > /pass.txt

CMD [ "nginx", "-g", "daemon: off;"]