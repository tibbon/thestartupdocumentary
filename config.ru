require 'rubygems'
require 'sinatra'
require 'logger'
require './site'
root_dir = File.dirname(__FILE__)

log = File.new('log/sinatra.log', 'a')
$stdout.reopen(log)
$stderr.reopen(log)

set :environment, :production
set :root,  root_dir
set :logging, true
set :app_file, File.join(root_dir, 'site.rb')
disable :run

run Sinatra::Application
