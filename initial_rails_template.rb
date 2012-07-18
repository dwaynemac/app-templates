# Doc for rails templates: http://edgeguides.rubyonrails.org/rails_application_templates.html

run "rm public/index.html"
run "rm -rf test"

gem_group :assets do
  gem 'execjs'
  gem 'therubyracer'
end

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'libnotify'
  gem 'yard', '~> 0.7.4'
  gem 'yard-rest', git: 'git@github.com:dwaynemac/yard-rest-plugin.git'
end

run "bundle install"

generate('rspec:install')
run "bundle exec guard init"

git :init
git :add => "."
git :commit => "-am 'Initial commit'"