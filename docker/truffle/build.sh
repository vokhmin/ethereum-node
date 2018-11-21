#!/usr/bin/env bash

rm -fR ./output/logs/
rm -fR ./output/contracts/

mkdir -p ./output/logs
mkdir -p ./output/contracts/

truffle compile --all > ./output/logs/compile.log
if [ $? -eq 0 ]
then
  echo "Successfully compiled all contracts."
else
  cat ./output/logs/compile.log
  echo ""
  echo "There're contract compilation errors!" >&2
  exit 1
fi

truffle test > ./output/logs/test.log
if [ $? -eq 0 ]
then
  echo "All contract tests are completed successfully."
else
  cat ./output/logs/test.log
  echo ""
  echo "Some contract tests are failed!" >&2
  exit 2
fi

cp -fR ./build/contracts/*.json ./output/contracts
