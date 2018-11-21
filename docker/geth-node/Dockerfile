FROM ethereum/client-go:v1.8.18

ARG profile=devs
ARG net-id=eth-node
ENV PROF=$profile
ENV NETID=$eth-node
ENV ETH_DATA=/root/.ethereum/$PROF

COPY ./$PROF /root
COPY ./$PROF/keystore $ETH_DATA/keystore

RUN geth --networkid 1201 --datadir $ETH_DATA init /root/genesis.json
# pre-generation of a dagfile
# RUN geth makedag 0 /root/.ethash
RUN chmod +x /root/start.sh

ENV OPTS="--identity $NETID --networkid 1201 --datadir $ETH_DATA"

ENTRYPOINT ["/root/start.sh"]
