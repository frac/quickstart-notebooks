#!/bin/bash
DEPLOYED=${WORKSPACE:-"$HOME/.quickstart"}

rsync -avzh quickstart_notebooks -e "ssh -F $DEPLOYED/ssh.config.ansible" undercloud:~/ --exclude 'quickstart_notebooks/venv/'
