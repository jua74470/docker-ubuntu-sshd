FROM ubuntu:20.04
MAINTAINER "Hiroki Takeyama"



# upgrade
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y dist-upgrade; \
    apt clean;

# timezone
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata ubuntu-minimal cron; \
    apt clean;

# sshd
RUN mkdir /run/sshd; \
    DEBIAN_FRONTEND=noninteractive apt install -y openssh-server; \
    sed -i 's/^#\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config; \
    sed -i 's/^\(UsePAM yes\)/# \1/' /etc/ssh/sshd_config; \
    apt clean;

# entrypoint
RUN { \
    echo '#!/bin/bash -eu'; \
    echo 'ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime'; \
    echo 'echo "root:${ROOT_PASSWORD}" | chpasswd'; \
    echo 'exec "$@"'; \
    } > /usr/local/bin/entry_point.sh; \
    chmod +x /usr/local/bin/entry_point.sh;

ENV TZ Europe/Paris

ENV ROOT_PASSWORD root

EXPOSE 22
EXPOSE 8080
EXPOSE 80
EXPOSE 443
EXPOSE 25500

ENTRYPOINT ["entry_point.sh"]
CMD    ["/usr/sbin/sshd", "-D", "-e"]
