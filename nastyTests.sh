#!/bin/bash

run_test () {
    rm -rf tmp_home
    mkdir tmp_home
    cp shared_config.json tmp_home/__npm-filter-config.json
    singularity run --compat --home `pwd`/tmp_home ~/containers/npm-filter.sif --config __npm-filter-config.json --repo_link_and_SHA "$1" "$2"
}

# run_test https://github.com/ryelle/wordpress-query-term "79b48f80a0fd59799d46e56947bf1914bd58dc26"
# run_test https://github.com/nigel-daniels/serve-lindex "7ed870d73baac0819f628419b9529ebf05949040"
# run_test https://gitlab.com/xsellier/good-winston-reporter.git "ac463c138e7f86443ff3fa3c0b5db2f3dc7255f1"
run_test https://github.com/yieme/object-attributes "5955978d191d52fdc822458691e7bfd1baa15f9a"