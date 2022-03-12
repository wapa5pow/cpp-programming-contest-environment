#!/bin/bash

set -euo pipefail
set -x

npm install -g atcoder-cli
pip3 install online-judge-tools
pip3 install online-judge-template-generator

(mkdir -p ~/.config/online-judge-tools && cp ~/online-judge-tools/prepare.config.toml ~/.config/online-judge-tools/)

(cd && \
	mkdir -p ac-library && \
	wget https://github.com/atcoder/ac-library/releases/download/v1.4/ac-library.zip && \
	unzip ac-library.zip -d ac-library && \
	rm ac-library.zip)