ARG DOLT_VERSION
FROM dolthub/dolt-sql-server:$DOLT_VERSION
ARG HERALD_VERSION
RUN dolt clone --depth 1 --branch release/$HERALD_VERSION besiedlungszug/herald
