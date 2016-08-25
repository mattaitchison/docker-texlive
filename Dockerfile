FROM base/archlinux

RUN pacman --noconfirm -Sy archlinux-keyring \
    && pacman --noconfirm -Syu \
    && pacman-db-upgrade \
    && trust extract-compat

RUN pacman --noconfirm -S texlive-bin
