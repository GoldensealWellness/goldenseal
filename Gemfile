source 'https://rubygems.org'

gem 'rails', '3.1.3'
gem 'mysql2'
gem 'jquery-rails', '1.0.19'
gem "recaptcha", :require => "recaptcha/rails"

group :production do
  gem 'unicorn'
  gem 'foreman'
  gem 'mysql2'
  gem 'therubyracer', :platforms => :ruby
end

group :assets do
  gem 'sass-rails', '3.1.5'
  gem 'coffee-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'capistrano'
  gem 'rails-dev-tweaks', '~> 0.6.1'
end

gem 'spree',
  :git => 'git://github.com/spree/spree.git',
  :branch => '1-0-stable'
gem 'spree_usa_epay', 
  :git => 'git://github.com/spree/spree_usa_epay.git', 
  :ref => '0cb57b4afbf1eef6a0ad67a4a1ea506c6418fde1'
gem 'spree_skrill', 
  :git => 'git://github.com/spree/spree_skrill.git', 
  :ref => '37e6159aa71ec053499e2c7aa9cf799a3b3bdb39'
gem 'spree_static_content', 
  :git => 'git://github.com/kyleries/spree_static_content.git',
  :branch => '1-0-stable'
gem 'spree_editor', 
  :git => 'git://raw.github.com/spree/spree_editor.git'
gem 'tinymce-rails', '>= 3.4.7.0.1'
gem 'spree_address_book', 
  :git => 'git://github.com/kyleries/spree_address_book.git',
  :branch => '1-0-stable'
gem 'spree_gateway', 
  :git => 'git://github.com/spree/spree_gateway.git'
gem 'spree_essentials', '~> 0.4.0.rc'
gem 'spree_essential_blog', 
  :git => 'git://github.com/citrus/spree_essential_blog.git'
gem 'spree_flat_in_range', 
  :git => 'git://github.com/kyleries/spree_flat_in_range.git'
gem 'spree_solr_search', 
  :git => 'git://github.com/romul/spree-solr-search.git'
gem 'acts_as_solr_reloaded', 
  :git => 'git://github.com/dcrec1/acts_as_solr_reloaded.git'