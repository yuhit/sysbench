#!/bin/bash

set -x

. ./conf.sh

sysbench ./lua/select_random_points.lua --db-driver=${driver} --pgsql-host=${host} --pgsql-port=${port} \
 --pgsql-user=${user} --pgsql-password=${password} --pgsql-db=${dbname} \
 --tables=${tcount} --table_size=${tsize} \
 --threads=${threads} --report-interval=${interval} \
 --max-requests=${requests} --percentile=95  --time=${maxtime} run
