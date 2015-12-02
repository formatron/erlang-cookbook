version = node['formatron_erlang']['version']

apt_repository 'erlang' do
  uri 'http://packages.erlang-solutions.com/ubuntu'
  components ['contrib']
  distribution node['lsb']['codename']
  key 'http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc'
end

package 'erlang' do
  version version
end
