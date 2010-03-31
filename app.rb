require 'rubygems'
require 'sinatra'

enable :sessions

get '/' do
  session[:blah] = 'blah, blah'
  redirect '/something'
end

get '/something' do
  session[:blah]
end

