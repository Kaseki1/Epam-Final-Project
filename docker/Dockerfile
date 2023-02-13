FROM archlinux

# Install libs and dependencies
RUN pacman-key --init && pacman-key --populate
RUN pacman --noconfirm -Syyu
RUN pacman --noconfirm -S jsoncpp mariadb-libs base-devel

# Open port
EXPOSE 9090
EXPOSE 9091
