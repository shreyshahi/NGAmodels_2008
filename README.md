NGAmodels_2008
==============

NGA West ground motion models implemented in MATLAB. These MATLAB scripts implement the NGA West ground motion models as described in (Abrahamson and Silva, 2008; Boore and Atkinson, 2008; Campbell and Bozorgnia, 2008; Chiou and Youngs, 2008; Idriss, 2008). 

This package allows missing values for parameters (parameter value of -999 is treated as missing value). The missing parameters are estimated using techniques described in Kaklamanos et al. (2011).

Installation
=============

Copy the contents of the package in a folder and add that folder to MATLAB path.

Use
===


Authors
========
Yoshifumi Yamamoto implemented the base ground motion models (without the missing parameters).
Shrey Shahi implemented the missing parameter handling.