#!/bin/bash
work_dir_host=`mktemp -d`
echo "Using work dir: $work_dir_host"
singularity run --compat --home $work_dir_host --bind configs/verbose.json:$work_dir_host/config.json:ro npm-filter.sif --repo_link https://github.com/expressjs/body-parser


#singularity shell --compat --home $work_dir_host --bind configs/verbose.json:$work_dir_host/config.json:ro npm-filter.sif --repo_link https://github.com/expressjs/body-parser
