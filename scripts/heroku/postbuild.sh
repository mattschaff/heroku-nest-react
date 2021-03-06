#!/usr/bin/env bash

echo "Create Nest build"
yarn run nest build

echo 'Remove any existing React build.'
rm -rf ./build

echo 'Install frontend dependencies'
cd ./frontend
yarn install

echo 'Create new React build'
yarn run heroku-build

echo 'Move React build'
mv ./build ../