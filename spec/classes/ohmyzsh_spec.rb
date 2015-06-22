require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'ohmyzsh' do
  let(:facts) { {:boxen_user => 'boxen_user'} }
  it { should contain_class('ohmyzsh') }
  it do
    should contain_exec('install oh-my-zsh').with({
      :command => 'curl -L http://install.ohmyz.sh | sh',
      :creates => '/Users/boxen_user/.oh-my-zsh',
    })
  end
end
