include_attribute 'sprout-base::home'

node.default['sprout']['exemplar']['path'] = File.join(
  node.default['sprout']['home'], 'exemplar'
)
