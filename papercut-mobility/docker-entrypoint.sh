#!/usr/bin/with-contenv bashio

echo -e "${ADMIN_PASSWORD}\n${ADMIN_PASSWORD}" | passwd admin

if [ ! -f /etc/cups/cupsd.conf ]; then
  cp -rpn /etc/cups-skel/* /etc/cups/
fi

exec "$@"
