FROM resin/intel-nuc-buildpack-deps:jessie-scm-20170425

# Add packages
RUN apt-get update && apt-get install --no-install-recommends -y \
    dbus \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./agile.conf /usr/src/app/agile.conf

CMD dbus-daemon --address=unix:path=/usr/src/app/.agile_bus/agile_bus_socket --config-file=/usr/src/app/agile.conf
