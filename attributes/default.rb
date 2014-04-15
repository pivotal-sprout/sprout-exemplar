include_attribute 'sprout-osx-base::home'

node.default['sprout']['foobar']['path'] = File.join(node.default['sprout']['home'], 'foobar')
