#!/bin/bash

set -x

. ./conf.sh

# run
sysbench ./lua/oltp_read_write.lua --db-driver=${driver} --pgsql-host=${host} --pgsql-port=${port} \
  --pgsql-user=${user} --pgsql-password=${password} --pgsql-db=${dbname} \
  --tables=${tcount} --table_size=${tsize} \
  --threads=${threads} --events=${requests} \
  --report-interval=${interval} --rand-type=uniform \
  --time=${maxtime} --percentile=95 run
