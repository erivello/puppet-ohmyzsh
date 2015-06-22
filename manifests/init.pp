# This is a placeholder class.
class ohmyzsh {

  $curl = 'curl -L http://install.ohmyz.sh'
  $sh = 'sh'
  $home = "/Users/${::boxen_user}"

  exec { 'install oh-my-zsh':
    command => "${curl} | ${sh}",
    creates => "${home}/.oh-my-zsh",
  }
}
