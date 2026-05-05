ARG DOLT_VERSION=latest
FROM dolthub/dolt-sql-server:$DOLT_VERSION
ARG HERALD_BRANCH=live
RUN dolt clone --depth 1 --branch $HERALD_BRANCH besiedlungszug/herald
