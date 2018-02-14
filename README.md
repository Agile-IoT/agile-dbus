<!--
# Copyright (C) 2017 Resin.io, FBK.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License 2.0
# which accompanies this distribution, and is available at
# https://www.eclipse.org/legal/epl-2.0/
# 
# Contributors:
#     Resin.io, FBK - initial API and implementation
-->

# Agile dbus

[Dockerhub](https://hub.docker.com/r/agileiot/agile-dbus-armv7l/)

This modules only responsibility is to init a dbus socket called `agile_bus_socket` in the host system with `agile.conf`.

How to use:

```
docker pull agileiot/agile-dbus-armv7l
```

Bind-mount the host directory the socket will be created and run:

```
docker run -v /my/host/fs/.agile_bus
```

or with docker-compose:

```
agile-dbus:
  image: agileiot/agile-dbus-armv7l
  restart: always
  volumes:
    - $DBUS_SESSION_SOCKET_DIR:/usr/src/app/.agile_bus
```
