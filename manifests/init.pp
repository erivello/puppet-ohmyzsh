# This is a placeholder class.
class ohmyzsh {

  $curl = 'curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh'
  $sh = 'sh'
  $home = "/Users/${::boxen_user}"

  exec { 'install oh-my-zsh':
  command => "${curl} | ${sh}",
  onlyif => "test ! -d ${home}/.oh-my-zsh",
  }
}
