# git checkout -b $SNAP_BRANCH && \
# git fetch upstream && \
# git pull upstream $UPSTREAM_BRANCH && \
yarn install && \
yarn make -- --targets=@electron-forge/maker-zip && \
snapcraft pack && \
echo "This can be run with:\nsudo snap remove kenku-fm && sudo snap install kenku-fm_*.snap --dangerous"
