#!/bin/bash

mv pyproject.toml pyproject-hidden.toml
cd templates
sed -i 's|style = "https://raw.githubusercontent.com/theengineeringco/python-styleguide/master/TEC-style.toml"|style = "../TEC-style.toml"|g' pyproject.toml

flake8 --select=NIP && EXIT=0 || EXIT=1 

sed -i 's|style = "../TEC-style.toml"|style = "https://raw.githubusercontent.com/theengineeringco/python-styleguide/master/TEC-style.toml"|g' pyproject.toml
cd ..
mv pyproject-hidden.toml pyproject.toml

exit ${EXIT}