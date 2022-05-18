#!/bin/bash


if [[ "${GITPOD_WORKSPACE_URL}" ]]; then

# Update Vite's HMR config in Nuxt 3
VITE_HMR_PORT=${VITE_HMR_PORT:-24678}
cat > /home/gitpod/.nuxtrc <<EOF
#vite.server.hmr.host=${GITPOD_WORKSPACE_URL/https:\/\//$VITE_HMR_PORT-}
#vite.server.hmr.clientPort=443
#vite.server.hmr.protocol=wss
telemetry.enabled=false
EOF

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

fi;

# Copy aliases to home
cat > /home/gitpod/.bash_aliases <<EOF
alias g='git'
alias gp='git push'
alias go='git checkout'
EOF

