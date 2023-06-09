#!/bin/bash
## script to run the analysis

analysis=“H4l_Analysis” 

# calling and starting ROOT
echo “ ROOT is getting started”

root -l -b <<EOF

## ROOT will be run in line and batch mode until the EOF command is met

.L $analysis.C+
## The analysis.C file will be loaded and compiled as a shared library
$analysis

EOF

##
echo “End of execution"
