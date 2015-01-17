If you are following along with Codio there are a few work arounds you need to make to ensure things run smoothly.

These are just one line commands or bits of code so compared to installing and setting up a solid development environment you are still way ahead of the game (never mind being able to develop on a Windows machine easily or a Chromebook)

## Getting your localhost server working

Inside the main Sinatra server file you need to add a line to change the default URL from localhost to a publically accessible one.

In the file where the action is taking place (server.rb in our first example), and after requring the Gems you need, add this line:

```ruby
require 'sinatra'

set :bind, '0.0.0.0'
```

What this does is change your server from being "localhost" to a public IP address of "0.0.0.0". Basically, in terms of Codio it lets the Box URL thing work.

## Installing ...