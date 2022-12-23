#!/bin/zsh
targets=targets.txt
base=https://github.com/crossplane-contrib
array=("${(@f)$(< $targets)}")

for entry in $array;  do
  provider=$(echo $entry | awk -F ' ' '{print $1}')
  echo "$provider"
  end=$(echo $provider| awk -F- '{print $2}')
  echo "$end"
  release=$(echo $entry | awk -F ' ' '{print $2}')
  echo "$release"
  stub=${provider}/apis/${end}.go

  git clone --branch $release --single-branch $base/$provider.git

  # go get $stub
  imports=($(go list -json $stub | jq '.Imports[]' | tr -d '"'))

  for api in $imports; do  
    go get $api
    cue get go $api;
  done

  rm -rf $provider
done