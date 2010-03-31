require 'rubygems'
require 'sinatra'
require 'helpers'

enable :sessions

include Helpers

get '/' do
  authorise!
  'hi!'
end
