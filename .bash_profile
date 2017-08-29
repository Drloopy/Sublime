# Use MAMP version of PHP
PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:~/bin:$PATH

source ~/git-completion.bash

green="\[\033[0;32m\]"
blue="\[\033[0;31m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
export PATH=$PATH:/.composer/vendor/bin
