# Setup
config_location=$(cat ~/.machine_config_location)

# Settings
set -o noclobber

# Set default Editor
export EDITOR=emacs

# Personal aliases
alias e=$EDITOR

# Personal Functions
function mkcd () {
  mkdir $1;
  cd $1
}

function gpush () {
  git commit -am $1
  git push
}

function zshrc {
  e $config_location
  source $config_location
  pushd $(dirname $config_location) > /dev/null
  git  commit -am 'automated commit'
  git push
  popd > /dev/null
}
