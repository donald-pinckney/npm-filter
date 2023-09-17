#!/bin/bash
sudo singularity build -F ~/containers/npm-filter.sif npm-filter.def
singularity push -U ~/containers/npm-filter.sif library://donald-pinckney/js/npm-filter.sif:latest