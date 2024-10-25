ARG UID=3005

FROM kanidm/server

ARG UID
ARG GID

LABEL maintainer="Thien Tran contact@tommytran.io"

RUN zypper dup -y

RUN useradd -u ${UID} --system kanidm
USER kanidm
