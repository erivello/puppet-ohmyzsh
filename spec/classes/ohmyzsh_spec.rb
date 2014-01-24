require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'ohmyzsh' do
  it do
    should contain_exec('install oh-my-zsh').with({
      :command => 'curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh'
    })
  end
end
