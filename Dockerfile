FROM ubuntu:18.04
RUN mkdir -p /home/mtg
COPY ./metamug-linux-x64/METAMUG_CONSOLE /home/mtg/METAMUG_CONSOLE
CMD sh /home/mtg/METAMUG_CONSOLE/bin/catalina.sh run