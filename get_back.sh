#!/bin/bash

rsync -avzh undercloud:~/quickstart_notebooks -e "ssh -F $HOME/workspace/ssh.config.ansible" . --exclude 'quickstart_notebooks/venv/'
