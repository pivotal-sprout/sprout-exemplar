file node['sprout']['exemplar']['path'] do
  action :touch
  owner node['sprout']['user']
end
