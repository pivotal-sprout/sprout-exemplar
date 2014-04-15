file node['sprout']['foobar']['path'] do
  action :touch
  owner node['current_user']
end
