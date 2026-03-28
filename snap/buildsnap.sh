git checkout -b $SNAP_BRANCH && \
git fetch upstream && \
git pull upstream $UPSTREAM_BRANCH && \
yarn install && \
yarn make -- --targets=@electron-forge/maker-zip && \
snapcraft pack && \
sudo snap remove kenku-fm && \
sudo snap install kenku-fm_*.snap --dangerous
