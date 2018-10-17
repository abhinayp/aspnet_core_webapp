if command -v brew; then
  echo "brew already installed"
else
  echo "installing brew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
fi
