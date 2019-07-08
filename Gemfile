source 'https://rubygems.org'
gemspec

gem 'mongov1',     '~> 1.9', git: 'https://github.com/dressipi/mongo-ruby-driver.git', branch: 'rename-legacy-mongo'
gem 'bsonv1_ext', '~> 1.5', :platform => :mri, git: 'https://github.com/dressipi/mongo-ruby-driver.git', branch: 'rename-legacy-mongo'
gem 'rake'

group(:test) do
  gem 'rspec'
  gem 'log_buddy'
end

group(:guard) do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'rb-fsevent'
end
