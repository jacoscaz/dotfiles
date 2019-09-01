
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

#
# Loading NVM takes around 1s, which is annoying. The following snippet 
# replaces NVM's original initialization lines and:
# - adds the binaries of the node version aliased as `default` to $PATH
# - aliases the `nvm` command so that `nvm` can be lazy-loaded on-demand.
#

if [ -s "$HOME/.nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  export NODE_VERSION="$(cat "$NVM_DIR/alias/default")"
  export PATH="$NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH"
  alias nvm="unalias nvm && . "$NVM_DIR/nvm.sh" && . "$NVM_DIR/bash_completion" && nvm"
fi

#
# The following section sets bash' prompt so that, in addition to the default
# "{user}@{host}:{cwd}$" elements, an additional element is shown when inside
# git repositories that embeds the current branch and state of the repository
# within the prompt itsef.
#

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\u@\h:\W\`parse_git_branch\`$ "

#
# Needed when using bash 5.0 installed via brew.
#

export PATH="/usr/local/bin:$PATH"

