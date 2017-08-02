#!/bin/bash
DEPLOYED=${WORKSPACE:-"$HOME/.quickstart"}

ssh -F $DEPLOYED/ssh.config.ansible undercloud -L 8888:localhost:8888 "source stackrc; pushd quickstart_notebooks/infra/; ./prepare.sh; source /home/stack/quickstart_notebooks/venv/bin/activate; popd; pushd quickstart_notebooks/notebooks; killall jupyter-notebook ; jupyter notebook --port 8888 ; popd; "
