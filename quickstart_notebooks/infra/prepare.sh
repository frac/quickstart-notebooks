#!/bin/bash
sudo yum groupinstall 'Development Tools' -y
sudo yum install python-devel -y
sudo easy_install pip virtualenv
virtualenv /home/stack/quickstart_notebooks/venv
source /home/stack/quickstart_notebooks/venv/bin/activate
pip install ipython jupyter
pip install python-mistralclient
