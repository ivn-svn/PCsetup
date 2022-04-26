# wkhtmltopdf
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
&&
brew install --cask wkhtmltopdf

# Line to output pdf from locally run PHP webpage
# /tmp % wkhtmltopdf http://192.168.64.2/some.php somephp.pdf


# Source:

# https://brewinstall.org/install-wkhtmltopdf-mac-osx/