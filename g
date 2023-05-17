#! /usr/bin/dash
# vim: ft=bash

# g - grep with desired options
# Shorter better. Now with longer runtime! :-(
exec grep --recursive --line-number --color=auto -I "$@"

# Other grep options which have been useful
# --exclude=\*.html
# --exclude=tags
# --exclude=\*.ipynb
# --exclude=\*.pyc
# --exclude=xunit.xml
# --exclude=.coverage
# --exclude-dir=.git
#
# --exclude-dir=node_modules
# --exclude-dir=tmp
# --exclude-dir=env
# --exclude-dir=build
# --exclude-dir=.pytest_cache
# --exclude-dir="*.egg-info"

