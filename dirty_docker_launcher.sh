#!/bin/bash
printf '%s\n' " Choose a name for the node"
read node_name

docker run -d --restart=unless-stopped -p 30333:30333/tcp \
-p 5353:5353/udp \
-p 3573:3573/udp \
--name stafi_node \
--mount source=chain_data,target=/root/.local/ \
hyperbot/stafi:sitara \
--chain=sitara --validator --sentry  --name '${node_name}' --pruning=archive
