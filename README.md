# pbs-torque

This profile configures Snakemake to run on the [Torque Scheduler](http://www.adaptivecomputing.com/products/open-source/torque/).

## Setup

### Deploy profile

To deploy this profile, run

    mkdir -p ~/.config/snakemake
    cd ~/.config/snakemake
    cookiecutter https://github.com/Snakemake-Profiles/pbs-torque.git

Then, you can run Snakemake with

    snakemake --profile pbs-torque ...


### Parameters

The following resources are supported by on a per-rule basis:

**node** - set the ppn resource request (defaults to the thread declaration).  
**mem** - set the memory resource request (bytes).  
**mem_mb** - set the memory resource request (megabytes).  
**mem_gb** - set the memory resource request (gigabytes).  
**walltime** / **time** - set the walltime resource (secs).  
**walltime_min** / **time_min** - set the walltime resource (mins).  
**walltime_h** / **time_h** - set the walltime resource (hours).  
