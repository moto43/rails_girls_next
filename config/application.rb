# require gems and classes
require 'bundler'
Bundler.require
require 'sinatra/reloader'
register Sinatra::Reloader
$: << File.expand_path('../',__FILE__)
Dir['./app/**/*.rb'].sort.each{ |file| require file}

# configure sinatra
set :root, Dir['./app']
set :public_folder, Proc.new { File.join(root, 'asssets')}
set :erb, :layout => :'layouts/application'