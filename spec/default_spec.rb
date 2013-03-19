require 'chefspec'

describe 'osirix::default' do
  let(:chef_run) { ChefSpec::ChefRunner.new.converge 'osirix::default' }
  it 'should do something' do
    pending
  end
end
