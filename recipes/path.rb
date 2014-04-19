file node['sprout']['exemplar']['path'] do
  action :touch
  owner node['current_user']
end
