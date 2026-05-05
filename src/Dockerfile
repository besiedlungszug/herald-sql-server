ARG DOLT_VERSION
FROM dolthub/dolt-sql-server:$DOLT_VERSION
ARG HERALD_BRANCH
RUN dolt clone --depth 1 --branch $HERALD_BRANCH besiedlungszug/herald
