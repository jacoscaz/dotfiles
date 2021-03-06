#
# One day, hopefully, we'll have a en_EU.UTF-8 locale. 
# See https://unix.stackexchange.com/questions/62316/why-is-there-no-euro-english-locale
#

#
# en_IE is probably the sanest locale for a developer based in Europe.
# - time: DD/MM/YYYY
# - clock: 24h
# - system: metric
# - paper: A4
# - currency: euro
# - numbers: 1,234.56
#

export LANG="en_IE.UTF-8"
export LANGUAGE="en"
export LC_CTYPE="en_IE.UTF-8"
export LC_COLLATE="en_IE.UTF-8"
export LC_MESSAGES="en_IE.UTF-8"
export LC_MONETARY="en_IE.UTF-8"
export LC_NUMERIC="en_IE.UTF-8"
export LC_TIME="en_IE.UTF-8"
export LC_PAPER="en_IE.UTF-8"
export LC_NAME="en_IE.UTF-8"
export LC_ADDRESS="en_IE.UTF-8"
export LC_TELEPHONE="en_IE.UTF-8"
export LC_MEASUREMENT="en_IE.UTF-8"
export LC_IDENTIFICATION="en_IE.UTF-8"

#
# As this overrides every LC_ variable above, let's save this for quick'n'dirty
# workarounds to locale issues. Should the need arise, try launching a program 
# in this way:
#
#     $ LC_ALL="en_US.UTF-8" someprogram
#

# export LC_ALL=""

#
# What about ISO dates? YYYY-MM-DD? The en_DK locale comes to the rescue!
# Unfortunately, it doesn't seem to be available on Mac OS (X) and some
# Linux distributions (Ubuntu).
#

if locale -a | grep -q ^en_DK\.UTF-8 ; then export LC_TIME="en_DK.UTF-8"; fi

#
# This makes a few command-line programs (such as ls) print ISO-formatted
# timestamps. Of course, this also does not work on Mac OS (X).
# See https://bbs.archlinux.org/viewtopic.php?id=214899
#

export TIME_STYLE="posix-long-iso"

