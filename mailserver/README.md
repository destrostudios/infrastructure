# mailserver

Server via [docker-mailserver](https://github.com/docker-mailserver/docker-mailserver).

Customizations of `compose.yaml`:
- `hostname`: mail.destrostudios.com
- `volumes`: /etc/localtime:/etc/localtime:ro
- `volumes`: /etc/letsencrypt:/etc/letsencrypt:ro
- `services`: `ui` via [roundcubemail](https://github.com/roundcube/roundcubemail-docker)

Customizations of `mailserver.env`:
- `SSL_TYPE` = letsencrypt
- `SSL_DOMAIN` = anselm-kuesters.de