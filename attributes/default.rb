include_attribute 'sprout-osx-base::home'

node.default['sprout']['exemplar']['path'] = File.join(
  node.default['sprout']['home'], 'exemplar'
)
