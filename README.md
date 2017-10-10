# pbs-torque

This profile configures Snakemake to run on the [Torque Scheduler](http://www.adaptivecomputing.com/products/open-source/torque/).

## Setup

### Deploy profile

To deploy this profile, change to your desired **working directory** and run

    cookiecutter https://github.com/neilav/torque-pbs.git

Then, you can run Snakemake with

    snakemake --profile pbs-torque ...


### Parameters

The following params are supported by on a per-rule bassis:

**mod** - space separated list of linux software modules.  
**node** - set the ppn resource request (defaults to the thread declaration).  
**mem** - set the memory resource request.  
**walltime** - set the walltime resource.  
**workdir** - set the working directory for sterr and stdout.

### Jobscript

A new variable {assignments} is now available in the jobscript. It will generate the parameters as assignment statements of the form key='value'. The variables are prefixed with SM_, and sub-dictionaries are separated with an underscore.

This enables automatically generating things in the jobscript.sh, such as loading modules. An example jobscript might be:

```bash
{assignments}
module load ${{SM_params_mod}} > /dev/null 2>&1
{exec_job}
```
