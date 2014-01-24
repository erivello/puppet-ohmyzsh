# This is a placeholder class.
class ohmyzsh {

  $curl = 'curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh'
  $sh = 'sh'

  exec { 'install oh-my-zsh':
    command => "${curl} | ${sh}"
  }
}
