## My Emacs Configuration

Emacs version: 24.5.1

This is a repository for my Emacs configuration for Clojure/ClojureScript development
on Windows 10 and Linux.

This is basically a modification of resources (Emacs configuration) provided for
"Clojure for the brave and true" book located here: https://www.nostarch.com/clojure.

### Configuration notes

On Windows "HOME" environment variable must be created with the value that represents the location of the user folder or any location in which Emacs should
create .emacs.d folder.

There is a Power Shell [script](tools/win_set_home_variable.ps1) that sets the "HOME" system environment variable to the current user's folder.
