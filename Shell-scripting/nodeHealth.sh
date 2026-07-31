#!/bin/bash

#######
# Author: Anuj
# Date: 31/07/2026
#
# This script outputs the node health
#
# Version: v1
########

set -x #debug mode
df -h

free -g

nproc 
