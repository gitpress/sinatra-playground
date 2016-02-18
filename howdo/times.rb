require 'sinatra'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'
set :port, 3000

get '/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @result = @first * @second
  "#{@first} times #{@second} is #{@result}!"
end