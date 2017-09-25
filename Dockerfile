#-------------------------------------------------------------------------------
# Copyright (C) 2017 Resin.io, Create-Net / FBK.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     Create-Net / FBK - initial API and implementation
#-------------------------------------------------------------------------------
FROM resin/rpi-raspbian

COPY ./agile.conf /usr/src/app/agile.conf

CMD dbus-daemon --address=unix:path=/usr/src/app/.agile_bus/agile_bus_socket --config-file=/usr/src/app/agile.conf
