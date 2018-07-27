require 'spec_helper'

describe 'mongodb::mongodb' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do

      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'runs apt-get update' do
      expect(chef_run).to update_apt_update 'update_sources'
    end

    it 'should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end

    it 'should start nginx service' do
      expect
    end
  end
end
