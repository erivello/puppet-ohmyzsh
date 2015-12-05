# This is a placeholder class.
class ohmyzsh {

  $url = 'https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh'
  $curl = "curl -L ${url}"
  $sh = 'sh'
  $home = "/Users/${::boxen_user}"

  exec { 'install oh-my-zsh':
    command => "${curl} | ${sh}",
    creates => "${home}/.oh-my-zsh",
  }
}
