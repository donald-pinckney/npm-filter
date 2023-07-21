#!/bin/bash
work_dir_host=$2

# echo "Using work dir: $work_dir_host"

if [ ! -f "$work_dir_host/config.json" ]; then
    echo "$work_dir_host/config.json does not exist. This MUST be the config file to use for npm-filter."
    exit 1
fi

if [ ! -d "$work_dir_host/the_package" ]; then
    echo "$work_dir_host/the_package does not exist. This MUST be the input directory containing a JS package!"
    exit 2
fi

singularity run --compat --home $work_dir_host npm-filter.sif --config config.json  --repo_local_dir the_package/