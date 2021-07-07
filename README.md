# taca: Data management and analysis support code for R

'Taca' is an Irish language (Gaeilge) word for 'support'.

R is an extremely useful tool for data analytics. However its powerfulness can also be its undoing. Its command-line approach can mean that seemingly small tasks can take a long time to complete.
The taca project is a draft package for R that aims to simplify some common tasks within the R software environment, improving upon existing base functions and introducing new commands. The scope of the package functionality is reflective of its draft nature.

The package currently contains functions to:

- generate test datasets
- do quick object exports
- sink console output more effectively
- identify duplicate data
- generate date intervals
- produce tables with missing value counts printed by default (if present)
- check the system timezone (a validation step in some datetime calculations), and
- provide a detailed summary of the user's current workspace.
