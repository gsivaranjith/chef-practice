hostname = node['hostname']
file 'etc/motd' do
	content "Host name is this:#(hostname)"
end
