function mdir() {
  dir="$1"
  mkdir $dir && cd $dir
}

function export_apps() {
  brew services stop --all
  brew bundle dump --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
  echo 'Brew apps exported!'

  pip freeze >"$DOTFILES_PATH/langs/python/requirements.txt"
  echo 'Python apps exported!'

  ls -1 /usr/local/lib/node_modules | grep -v npm >"$DOTFILES_PATH/langs/js/global_modules.txt"
  echo 'NPM apps exported!'
}

function import_apps() {
  brew services stop --all
  brew bundle --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
  echo 'Brew apps exported!'

  pip install -r "$DOTFILES_PATH/langs/python/requirements.txt"
  echo 'Python apps exported!'

  xars -I_ npm install -g "_" < "$DOTFILES_PATH/langs/js/global_modules.txt"
  echo 'NPM apps exported!'
}