FROM stilliard/pure-ftpd:hardened

MAINTAINER John Kennedy

ENV PUBLICHOST localhost

ENV SINGLEUSER user
ENV SINGLEPASS password
RUN printf 'test\ntest\n' | pure-pw useradd test -u ftpuser -d /home/ftpusers/test
RUN pure-pw mkdb
