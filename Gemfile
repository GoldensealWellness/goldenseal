source 'https://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

group :production do
  gem 'unicorn'
  gem 'foreman'
  gem 'therubyracer', :platforms => :ruby
 #only required for 0.70.x or later
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'capistrano'
end



gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem 'spree',
        :git => 'git://github.com/spree/spree.git',
        :branch => '1-0-stable'
gem 'spree_usa_epay', :git => 'git://github.com/spree/spree_usa_epay.git', :ref => '0cb57b4afbf1eef6a0ad67a4a1ea506c6418fde1'
gem 'spree_skrill', :git => 'git://github.com/spree/spree_skrill.git', :ref => '37e6159aa71ec053499e2c7aa9cf799a3b3bdb39'

gem 'spree_static_content', 
        :git => 'git://github.com/joeyjoejoejr/spree_static_content.git', 
        :branch => 'test' 
#gem 'spree_blue_theme', :git => 'git://github.com/spree/spree_blue_theme.git'
gem 'spree_editor', :git => 'git://raw.github.com/spree/spree_editor.git'
gem 'tinymce-rails', '>= 3.4.7.0.1'

