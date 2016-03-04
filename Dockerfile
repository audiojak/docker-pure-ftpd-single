FROM stilliard/pure-ftpd

MAINTAINER John Kennedy

ENV PUBLICHOST localhost

ENV SINGLEUSER user
ENV SINGLEPASS password
RUN printf '$SINGLEPASS\n$SINGLEPASS\n' | pure-pw useradd $SINGLEUSER -u ftpuser -d /home/ftpusers/$SINGLEUSER
RUN pure-pw mkdb
