function mdir() {
  dir="$1"
  mkdir $dir && cd $dir
}

function export_brew_apps() {
  brew services stop --all
  brew bundle dump --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
  echo 'Brew apps exported!'
}

function import_brew_apps() {
  brew services stop --all
  brew bundle --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
  echo 'Brew apps exported!'
}