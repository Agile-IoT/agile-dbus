FROM resin/armhf-alpine

COPY ./agile.conf /usr/src/app/agile.conf

CMD dbus-daemon --address=unix:path=/usr/src/app/.agile_bus/agile_bus_socket --config-file=/usr/src/app/agile.conf
