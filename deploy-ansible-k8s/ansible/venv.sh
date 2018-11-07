#!/bin/bash
cd $(dirname "$0")

# Detect the platform (similar to $OSTYPE)
OS="`uname`"
case $OS in
  'Linux')
    virtualenv --python=/usr/bin/python3 venv
    ;;
  'Darwin')
    virtualenv --python=/usr/local/bin/python3 venv
    ;;
  *) ;;
esac

source venv/bin/activate
pip install -r venv_requirements.txt
echo "EXECUTE : source venv/bin/activate" 
