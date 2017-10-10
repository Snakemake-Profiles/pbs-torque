#!/bin/sh
# properties = {properties}
{assignments}
module load ${{SM_params_mod}} > /dev/null 2>&1
{exec_job}
