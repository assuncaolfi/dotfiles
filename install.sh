#!/bin/bash

bash build-dep-R.sh
bash install-R.sh 4.0.5
bash build-dep-nvim.sh
bash install-nvim.sh
