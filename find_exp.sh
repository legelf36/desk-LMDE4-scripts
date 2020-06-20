#!/bin/bash

# this is an example of the find command.

find /media/kim -type d -maxdepth 3 2>/dev/null

# The first part is the pattern to search for '/media/kim'

# The second part is the type of pattern to search for in this case
# '-type d' means directories. The '-maxdepth 3'means only go 3
# directories deep.

# the last part is to dump any errors to '/dev/null' (which is the void).
# The "2" is the error return value.
