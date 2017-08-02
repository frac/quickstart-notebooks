#!/bin/bash
DEPLOYED=${WORKSPACE:-"$HOME/.quickstart"}

rsync -avzh undercloud:~/quickstart_notebooks -e "ssh -F $DEPLOYED/ssh.config.ansible" . --exclude 'quickstart_notebooks/venv/'
