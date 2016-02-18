require 'sinatra'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  'How do, Sinatra!'
end

get '/my_name_is/:name' do
  
  name = params[:name]
  if (name.downcase.include?("andrew"))
    "YES"
  else
    "How the hell did you find this?"
  end
  
end

get '/:name/:message' do

  "How do #{params[:name]}, #{params[:message]} to you too!"
end

get '/thingy/:test/:another' do 
  
  test = params[:test]
  another = params[:another]
  erb :index, :locals => { :test => test, :another => another }
  
end

