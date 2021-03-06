#!/usr/bin/env bash

# Build front end
cd ./frontend
yarn build

# Run server
cd ../
nest start