## My *.emacs.d*

Emacs version currently used: 25.3-x86_64
Systems used on: Windows 7, Windows 10, lubuntu

This repository contains my personal Emacs configuration - the whole
*.emacs.d* folder. It is a modification of resources (Emacs configuration) provided for
*"Clojure for the brave and true"* book located [here](https://www.nostarch.com/clojure).

### Configuration notes

On Windows `HOME` environment variable must be created with the value that represents
the location of the user folder or any location in which Emacs should
create *.emacs.d* folder.

There is a Power Shell [script](tools/win_set_home_variable.ps1) that sets the `HOME`
system environment variable to the current user's folder.
