#!/bin/bash

rsync -avzh quickstart_notebooks -e "ssh -F $HOME/workspace/ssh.config.ansible" undercloud:~/ --exclude 'quickstart_notebooks/venv/'
