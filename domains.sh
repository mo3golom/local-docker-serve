#!/bin/bash
for entry in ./apps/*
do
  # shellcheck disable=SC2046
  # shellcheck disable=SC2006
  # shellcheck disable=SC2005
  NAME=`basename "$entry"`
  echo "http://$NAME.dev.localhost:443/"
done