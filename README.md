# zvelo-grafana

This is a Docker Automated Build [zvelo/zvelo-grafana](https://registry.hub.docker.com/u/zvelo/zvelo-grafana/).

To know more about Grafana, read the documentation [here](http://grafana.org/).

## Run Grafana container:

```bash
TMPFILE_ENVETCD=$(mktemp -t service.XXXXXXXXXX)

/opt/bin/envetcd \
  --clean-env \
  --service zvelo-grafana \
  --output $TMPFILE_ENVETCD \
  env

/usr/bin/docker run \
  --rm \
  --env-file $TMPFILE_ENVETCD \
  --env-file /etc/environment \
    -e IMAGE_NAME=zvelo/%p \
  --name=zvelo-grafana \
  -p 8003 \
  zvelo/zvelo-grafana
```

## Launch with fleet:

```bash
fleetctl submit zvelo-grafana@.service
fleetctl start zvelo-grafana@1
```
