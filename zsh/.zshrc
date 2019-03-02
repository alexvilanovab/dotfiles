# exports {{{

export ZSH="/Users/alexvilanovab/.oh-my-zsh"
export LANG=en_US.UTF-8

# }}}


# Theme {{{

ZSH_THEME="bira"

# }}}


# Plugins {{{

plugins=(
  git
)

# }}}


# init {{{

# initialize zsh
source $ZSH/oh-my-zsh.sh

# }}}


# Google Cloud SDK {{{

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexvilanovab/Documents/google-cloud-sdk/path.zsh.inc' ];
then . '/Users/alexvilanovab/Documents/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexvilanovab/Documents/google-cloud-sdk/completion.zsh.inc' ];
then . '/Users/alexvilanovab/Documents/google-cloud-sdk/completion.zsh.inc';
fi

# }}}


# Alias {{{

# Alias for p2++ (college shit)
alias p2++='g++ -D GLIBCXX_DEBUG -O2 -Wall -Wextra -Werror -Wno-sign-compare -std=c++11'

# }}}


# PyWal {{{

# Import colorscheme from 'wal' asynchronously
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# }}}
