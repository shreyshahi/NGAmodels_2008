NGAmodels_2008
==============

NGA West ground motion models implemented in MATLAB. These MATLAB scripts implement the NGA West ground motion models as described in (Abrahamson and Silva, 2008; Boore and Atkinson, 2008; Campbell and Bozorgnia, 2008; Chiou and Youngs, 2008; Idriss, 2008). 

This package allows missing values for parameters (parameter value of -999 is treated as missing value). The missing parameters are estimated using techniques described in Kaklamanos et al. (2011).

Installation
=============

Copy the contents of the package in a folder and add that folder to MATLAB path.

Use
===

See individual ground-motion model scripts to find the input and output specification for each function. The ground-motion model scripts automatically use the find_missing.m script to estimate the missing parameters (specified by -999).

The find_missing.m script can be used independently too. See the comments in the script for input/output specifications.


Handling of missing parameters
===============================

These scripts needs at least five basic parameters; Moment magnitude, Joyner-Boore distance, Vs30, Style of faulting (rake angle) and hanging wall flag. Rest of the parameters used in the ground-motion models can be estimated using the framework described in Kaklamanos et al. (2011). 

Authors
========
Yoshifumi Yamamoto implemented the base ground motion models (without the missing parameters).
Shrey Shahi implemented the missing parameter handling.