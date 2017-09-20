## My *.emacs.d*

Emacs version currently used: 25.3-x86_64

Systems used on: Windows 7, Windows 10, lubuntu

This repository contains my personal Emacs configuration - the whole
*.emacs.d* folder. It is a modification/extension of the resources
(Emacs configuration) provided for the book *"Clojure for the brave and true"*
that can be found [here](https://www.nostarch.com/clojure).

### Configuration notes

On Windows `HOME` environment variable must be created with the value that represents
the location of the user folder or any location in which Emacs should
look for the *.emacs.d* folder.

There is a Power Shell [script](tools/win_set_home_variable.ps1) that sets the `HOME`
system environment variable to the current user's folder.
