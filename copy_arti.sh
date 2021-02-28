#!/bin/bash
# shellcheck disable=SC2124
PROJECT=$@;
cp ./php/arti ./apps/"$PROJECT"/
echo '/arti' >> ./apps/"$PROJECT"/.gitignore;
echo "arti скопирован в $PROJECT и добавлен в .gitignore";