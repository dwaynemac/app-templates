# Doc for rails templates: http://edgeguides.rubyonrails.org/rails_application_templates.html

run "rm public/index.html"
run "rm -rf test"

gem_group :assets do
  gem 'execjs'
  gem 'therubyracer'
end

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

run "bundle install"

generate('rspec:install')

git :init
git :add => "."
git :commit => "-am 'Initial commit'"