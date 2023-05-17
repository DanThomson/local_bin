#! /usr/bin/dash
# vim: ft=bash

# ll - long list
# Add -t for time sort and -r for reverse when needed

exec ls \
    -o \
    -v \
    --indicator-style=slash \
    --file-type \
    --classify=always \
    --group-directories-first \
    --human-readable \
    --color=auto \
    --time=mtime \
    --time-style=iso \
    --hide="*.pyc" \
    "$@"

# -o                         # Like -l, but do not list group information
# -v                         # Natural sort by version numbers
# --indicator-style=slash    # Append / indicator to directories; Options: none (default), slash (-p), file-type (--file-type), classify (-F)
# --file-type                # Append / indicator to directories
# --classify=always          # Append indicator (one of */=>@|). always is the default; We list it here to make it explicit
# --group-directories-first  # Directories first
# --human-readable           # Print sizes like 1K 234M 2G etc.
# --color=auto               # Let ls decide when to use color
# --hide="*.pyc"             # Hide is like ignore, but overridden by -a or -A
#
# time can be any of the following:
# Access: atime; Metadata change time: ctime; Modified time: mtime; Birth time: birth
# --time=mtime


# Better ls'ing
###############

#--sort=WORD sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width
#-r, --reverse reverse order while sorting
#-c     with  -lt: sort by, and show, ctime;
#-c     with -l: show ctime and sort by name; otherwise: sort by ctime, newest first
#-f     list all entries in directory order
#-S     sort by file size, largest first
#-u     with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first
#-U     do not sort; list entries in directory order
#-v     natural sort of (version) numbers within text
#--time=WORD
#   Without -l: sort order
#   With -l: which time to show unless --sort=time is also used

#-d, --directory list directories themselves, not their contents
#-R, --recursive list subdirectories recursively

#-C     list entries by columns
#-x     list entries by lines instead of by columns
#--format=WORD across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C

#-H, --dereference-command-line follow symbolic links listed on the command line
#--dereference-command-line-symlink-to-dir follow each command line symbolic link that points to a directory
#--hyperlink[=WHEN] hyperlink file names WHEN
#-L, --dereference when showing file information for a symbolic link, show information for the file the link references rather than for the link itself

#-N, --literal print entry names without quoting
#-q, --hide-control-chars print ? instead of nongraphic characters
#-Q, --quote-name enclose entry names in double quotes
#--quoting-style=WORD use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE  environment variable)

#-Z, --context print any security context of each file


