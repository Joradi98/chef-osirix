require 'chefspec'

describe 'osirix::default' do
  let(:chef_run) { ChefSpec::ChefRunner.new.converge 'osirix::default' }

  it 'downloads OsiriX' do
    chef_run.should create_remote_file('/tmp/OsiriX.zip').with(
      :source => 'http://www.osirix-viewer.com/OldVersions/OsiriX4.1.2.pkg-Int.zip',
      :checksum => 'ff831f8fa55fffec94e98c26af998756591b3cbb255ba15372e07807af2ac6cc'
    )
  end

  it 'extracts OsiriX'

  it 'installs OsiriX'
end
