version = node['formatron_erlang']['version']
checksum = node['formatron_erlang']['checksum']

cache = Chef::Config[:file_cache_path]
deb = File.join cache, 'erlang.deb'
deb_url = "http://packages.erlang-solutions.com/erlang-solutions_#{version}_all.deb"

remote_file deb do
  source deb_url
  checksum checksum
end

dpkg_package 'erlang_solutions' do
  source deb
end

include_recipe 'apt::default'

package 'erlang'
