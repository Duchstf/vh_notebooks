#!/usr/bin/env bash


if [ "$1" == "" ]; then
  export COFFEA_IMAGE=coffeateam/coffea-dask:latest
else
  export COFFEA_IMAGE=$1
fi

singularity exec -B ${PWD}:/${PWD} -B /uscms/home/jennetd/nobackup/:/jennet_dir \
  /cvmfs/unpacked.cern.ch/registry.hub.docker.com/${COFFEA_IMAGE} \
  /bin/bash --rcfile /srv/.bashrc
