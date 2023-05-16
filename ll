#! /usr/bin/dash
# vim: ft=bash

# ll - long list 
# Add -t for time sort and -r for reverse when needed

# -o                         # Like -l, but do not list group information
# -v                         # Natural sort by version numbers
# --indicator-style=slash    # Append / indicator to directories; Options: none (default), slash (-p), file-type (--file-type), classify (-F)
# --file-type                # Append / indicator to directories
# --classify=always          # Append indicator (one of */=>@|). always is the default; We list it here to make it explicit
# --group-directories-first  # Directories first
# --human-readable           # Print sizes like 1K 234M 2G etc.
# --color=auto               # Let ls decide when to use color
# -v                         # Natural sort by version numbers
# --hide="*.pyc"             # Hide is like ignore, but overridden by -a or -A
#
# time can be any of the following:
# Access: atime; Metadata change time: ctime; Modified time: mtime; Birth time: birth
# --time=mtime


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
