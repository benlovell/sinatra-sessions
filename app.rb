require 'rubygems'
require 'sinatra'

get '/' do
  redirect '/something'
end

get '/something' do
  session[:blah]
end

