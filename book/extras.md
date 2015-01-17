In the Howdo - Params section I suggested you created something to take two inputs and times them together, this is what my first stab at it looked like:

```ruby
require 'sinatra'
# set bind a codio addition to force port to be public
set :bind, '0.0.0.0'

get '/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @result = @first * @second
  "#{@first} times #{@second} is #{@result}!"
end
```