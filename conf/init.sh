#!/bin/sh

set -e

sleep 5

echo "yes" | redis-cli --cluster create \
redis-1:7001 \
redis-2:7002 \
redis-3:7003 \
redis-4:7004 \
redis-5:7005 \
redis-6:7006 \
--cluster-replicas 1

echo "🚀 The Redis cluster is up and running..."
