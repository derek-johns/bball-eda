#!/usr/bin/env bash
# A bash script to setup the environment for project.

## Install and/or upgrade pip.
python3 -m pip install --upgrade pip

# Install virtualenv.
pip install virtualenv

# Create virtual environment in project root folder.
virtualenv -p python bball_eda_env

# Activate virtualenv.
source bball_eda_env/bin/activate

# Install necessary dependencies.
pip install ipykernel
pip install jupyter
pip install pandas
pip install matplotlib
pip install seaborn
pip install streamlit
pip install lxml

# Save dependencies to requirements file.
pip freeze > ./Setup/requirements.txt

# Create custom kernel.
python3 -m ipykernel install --user --name bball_eda_env --display-name "bball-eda-kernel"

# Open Jupyter Notebooks.
jupyter notebook