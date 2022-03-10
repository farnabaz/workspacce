#!/bin/bash

# Update Vite's HMR config in Nuxt 3
if [[ "${GITPOD_WORKSPACE_URL}" ]]; then

VITE_HMR_PORT=${VITE_HMR_PORT:-24678}
cat > /home/gitpod/.nuxtrc <<EOF
vite.server.hmr.host=${GITPOD_WORKSPACE_URL/https:\/\//$VITE_HMR_PORT-}
vite.server.hmr.clientPort=443
vite.server.hmr.protocol=wss
EOF

fi;
