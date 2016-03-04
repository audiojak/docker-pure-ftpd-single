FROM stilliard/pure-ftpd

MAINTAINER John Kennedy

ENV PUBLICHOST localhost

ENV SINGLEUSER user
ENV SINGLEPASS password
RUN pure-pw useradd $SINGLEUSER -u ftpuser -d /home/ftpusers/$SINGLEUSER; echo $SINGLEPASS; echo $SINGLEPASS;
RUN pure-pw mkdb
