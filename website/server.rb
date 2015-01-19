require 'sinatra'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

post '/contact' do
  
end