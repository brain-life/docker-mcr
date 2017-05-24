# Matlab Compiled Runtime (MCR) Container

You can use this container as a base image to run mcc compiled matlab application.

To compile your matlab application, do following.

1) Start Matlab UI and load the application
2) Run all addpath() for all of your dependencies
3) $ mcc -m main -a /root/git/encode/mexfiles (-a to add any non-matlab files used by the application. On Karst.. mcc -m main -R -nodisplay -a /N/u/hayashis/BigRed2/git/encode/mexfiles -d msa)

The important point here is to run mcc inside the Matlab UI where all the paths are setup. mcc knows which files needs to be included in the compiled binary. However, this approach means we can't script the compilation.. we have to run mcc manually
