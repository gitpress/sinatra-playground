require 'sinatra'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'

get '/' do
  'How do, Sinatra!'
end

get '/:name' do

  "How do #{params[:name]}!"
end