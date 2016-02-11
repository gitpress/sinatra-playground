require 'sinatra'
require "sinatra/reloader"
require 'csv'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'


get '/' do
  contents = CSV.open "test.csv", headers: true, header_converters: :symbol
  erb :index, :locals => { :contents => contents }
end