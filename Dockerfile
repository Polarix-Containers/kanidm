ARG UID=3005
ARG GID=3005

FROM kanidm/server

ARG UID
ARG GID

LABEL maintainer="Thien Tran contact@tommytran.io"

RUN zypper dup -y

RUN adduser -u ${UID} -g ${GID} --disabled-password --system kanidm
USER kanidm
