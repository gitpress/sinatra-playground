# Howdo Sinatra

Let's get that server built.

Inside your ```/howdo``` directory create a file called ```server.rb```. The name isn't significant, you could call it app.rb or whatever you like. Just remember what it is called.

I like to create things from the command-line:

```bash
touch server.rb
```

The ```touch``` command just creates a file.

Inside your file the first thing you need to do is ***require*** the Sinatra gem. Write the following on the first line:

```ruby
require 'sinatra'
```

This includes everything you need to get going with Sinatra in this file. 

> talk about Ruby require..

One thing you do with Sinatra is create **routes** and the corresponding actions that your app takes when a user visits those routes.

So, we define what html pages get rendered or if your app should take some data and how it should transform it or put into action other events.

Let's create our first route and first action. On line 3 write the following:

```ruby
get '/' do
  'How do, Sinatra!'
end
```

Let's go through what's happening:

1. We tell Sinatra what type of HTTP action is happening. This case, a simple "get"
2. we define within a quote what route we are talking about. So, www.website.com rather than wwww.website.com/another-route
3. we start a Ruby "do end" loop. So, everything between that is  potentially actioned when a user hits our root website address
4. Inside our "do end" loop we have just created a string with a  greeting.

> HTTP verbs panel

Let's see this greeting in action.

Working inside the same directory as your server.rb file run the following command:

```bash
ruby server.rb
```

This will fire up the default Ruby WEBrick server and you'll get a message from Sinatra, something like:

```
Sinatra/1.4.5 has taken the stage on 4567 for development with backup from WEBrick  
```

Visit your localhost:4567 address in a browser. You should see our smashing message

> Yorkshireman joke panel

As you visit your server's location at the default "/" location your server will spit out the request. See how it is a GET as well as the responding code.

```
"GET / HTTP/1.1" 200 16 - -> /  
```

> Server codes. 200 etc.

This may not be the most awesome app in the history of apps, but you've just built yourself one. 



