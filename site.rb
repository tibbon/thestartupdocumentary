require 'rubygems'
require 'sinatra'
require './partials'
helpers Sinatra::Partials

configure do
end

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/blog' do
  erb :blog
end

get '/contact' do
  erb :contact
end

get '/education' do
  erb :education
end

get '/interviews' do
  erb :interviews
end

get '/participate' do
  erb :participate
end

not_found do
  'This is nowhere to be found.'
end