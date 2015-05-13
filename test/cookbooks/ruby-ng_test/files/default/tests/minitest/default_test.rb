require_relative 'helpers'

describe_recipe "ruby-ng::default" do
  include Helpers::RubyNgTests

  it 'Installs the ruby<version> package' do
    package("ruby#{node['ruby-ng']['ruby_version']}").must_be_installed
  end

  # This test requires that node['ruby-ng']['bundler_version'] is set to a specific value, not to
  # "latest".
  it 'Installs the correct version of the bundler gem' do
    cmd = 'gem list bundler'
    gem_list_bundler_output = shell_out!(cmd).stdout
    bundler_version = node['ruby-ng']['bundler_version']
    assert(
      gem_list_bundler_output.include?("bundler (#{bundler_version})"),
      "Expected bundler version #{bundler_version} " \
        "to be the only version reported in the results of command '#{cmd}'")
  end
end

describe_recipe "ruby-ng::dev" do
  it 'Installs the ruby<version>-dev package' do
    package("ruby#{node['ruby-ng']['ruby_version']}-dev").must_be_installed
  end

  it 'Installs the build-essential package' do
    package('build-essential').must_be_installed
  end
end
