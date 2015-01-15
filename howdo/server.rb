require 'sinatra'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'

get '/' do
  'How do, Sinatra!'
end

get '/:name/:message' do

  "How do #{params[:name]}, #{params[:message]} to you too!"
end