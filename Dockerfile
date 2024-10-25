ARG UID=3004
ARG GID=3004

FROM kanidm/server

ARG UID
ARG GID

LABEL maintainer="Thien Tran contact@tommytran.io"

zypper dup -y

RUN adduser -u ${UID} -g ${GID} --disabled-password --system kanidm
USER kanidm