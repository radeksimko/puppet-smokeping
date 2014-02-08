require 'spec_helper'

describe 'smokeping::setup' do
  context 'when OS is not CentOS' do
    let(:facts) {
      { :operatingsystem => 'Ubuntu' }
    }

    it 'should fail' do
      expect {
        should create_class('smokeping::setup')
      }.to raise_error(Puppet::Error, /smokeping requires CentOS/)
    end
  end
end
