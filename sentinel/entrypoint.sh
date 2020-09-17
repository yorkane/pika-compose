#!/bin/sh
sed -i "s/\$SENTINEL_PORT/$SENTINEL_PORT/g" /sentinel/sentinel.conf
sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /sentinel/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /sentinel/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /sentinel/sentinel.conf
sed -i "s/\$PIKA_MASTER_IP/$PIKA_MASTER_IP/g" /sentinel/sentinel.conf
sed -i "s/\$PIKA_MASTER_PORT/$PIKA_MASTER_PORT/g" /sentinel/sentinel.conf
sed -i "s/\$PIKA_USERPASS/$PIKA_USERPASS/g" /sentinel/sentinel.conf
mkdir -p /data/tmp
mkdir -p /data/log

# exec "$@"
/sentinel/sentinel /sentinel/sentinel.conf --sentinel