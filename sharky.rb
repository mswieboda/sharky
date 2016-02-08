# Adding '../lib' to load path (since not using rubygems/bundler)
# Note: this is hacky, and not suggested if this was turned into a gem
# See: http://weblog.rubyonrails.org/2009/9/1/gem-packaging-best-practices/
lib_dir = "#{File.expand_path(File.dirname(__FILE__) + '/lib')}"
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'sinatra'
require 'slim'
require 'sharky'

set :bind, '0.0.0.0'

get '/hi' do
  Sharky::App.test
  slim :index
end
