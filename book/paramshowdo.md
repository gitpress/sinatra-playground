# Handling URL parameters with Sinatra

Let's continue working on our tiny Sinatra app but add the ability to handle URL parameters.

By this we mean, the ability to have routes like: ```/author/1/``` , ```articles?title=learningSinatra&author=AndrewDuckworth``` or ```/andrew?=isniceguy```.

So, we want our app be able to handle **author**, **articles** or **andrew** and the additional parameters of ```?title=learningSinatra&author=AndrewDuckworth``` etc. after them.

The reason this is important is that it enables us to create a blog or similar product which has a master page of our last 5 press releases called /article/ and a corresponding page for each individual article which lets people read those press releases.

Now, if we could only implement routes if we named them, everytime we created a new press release we'd have to add code to our Sinatra app to handle that page. So, if we were up to five different articles we could have an app that looks like this:

```ruby
get '/article' do
  #code
end

get '/article/1' do
  #code
end

get '/article/2' do
  #code
end

get '/article/3' do
  #code
end

get '/article/4' do
  #code
end

get '/article/5' do
  #code
end
```

That is pretty ugly. Imagine managing that!

With paramaters we get to define what to do in a generic way with routes like ```article/1``` to ```article/9999```. 

If you've ever clicked on some blog spam on Twitter you may have also noticed all of the following parameters used to track you and the origin of your arrival to the website.

> picture explaining this

Being able to handle parameters like ```articles/?title=cats``` also means we can do interesting additonal things like track user behaviour, sort and query information in our database for our users by giving them all the cat articles their heart desires.

In the tech world then, parameters is often sortened to params. So when you see params, they are talking about any additional parameteres or information provided with a URL or form submission etc.

We will now create a way for our app to handle that.

Write the following:

```ruby
get '/:name' do

  # we'll fill this in a sec

end
```

Like in the last section we are adding another GET route. This time we are using a great tool of ```:name``` which is a ruby symbol which accepts the URL of "/" and captures anything you place after it and contains it within the ```:name``` symbol for use later.

Inside your do end loop write the following:

```ruby
  "Howdo #{params[:name]}!"
```

Let's go over what's happening.

1. Like the last section, we are returning a string, ie something in the double quotes
2. This time we are using the the Ruby technique of ```#{}``` which injects into any string the result of some Ruby code
3. Inside that we've injected the params techinque which lets us access the additional parameters of the URL
4. We are then accessing the :name part of our URL paramaters. Which we do inside a square bracket next to the params.

So, a user types in something like /giantsquid

By having the params method we can access the giantsquid string. Which we have placed within the :name symbol.

The reason we target params with a square bracket is so that we can build many parameters on top of each other.

Let's see it in action now. Start your Sinatra server:

```bash
ruby server.rb
```

On our default route "/" we get back the same message as last section. Add something to the default route and see what you get back. This is mine:

![Picture of sinatra screenshot](book/screenshot-sinatra.png)

So, as you can see I typed in "giantsquid" after the "/". That additional parameter is captured in the :name symbol. I am able to leverage params[:name] inside a string using the Ruby #{} method to print it out to the screen.

Awesome.

Let's add another paramater to capture. Add the following:

```ruby
get '/:name/:message' do

  "How do #{params[:name]}, #{params[:message]} to you too!"
end
```

Here we've added another parameter to capture, we then call it like we did last time, but with the :message symbol.

Now, we need to restart our server to load up those changes.

Press Ctrl+C in your terminal running your Sinatra app.

Watch what it does when it shuts the server down.

Now, let's start it again by running:

```bash
ruby server.rb
```

In your browser, write in a route like: /hello/goodbye and you should see a polite message back. Here's mine:

![picture of doubled up params](book/sinatra-screenshot-routes.png)

Smashing.

You may be asking yourself "why would i ever do this?" but think about a complex app or API which lets you find a director with the first params and all of their films in the second.

We wouldn't actually expect a user to manually type in those parameters into a URL, rather a search bar or set of buttons may create the server request but the result is similar. We ask Sinatra to capture the URL parameters and action some steps in response.

In our case that is simply echoing our input, but in a fully-fledged app that could be accessing a database.

In the next section let's build our first substantial app.

> ### Challenge
> Now that you've seen how some basic Sinatra routes work, and how to access additional parameters try and make an app of your own. Don't worry about going overboard.
> If you are struggling for ideas, why not build a very simple calculator that takes the number provided in a first parameter and times it by the second.
> ##### Hint
> Remember, you can use Ruby as usual in your code, so setting variables to easily manipulate data is fine. If you encounter any error messages, read the carefully and google what you encounter
> ##### Going large
> Built that with ease? How about creating an entire calculator! Set a route with ```times/```, ```minus/``` routes etc. and program up a calculator. After the next section, where we'll learn about ERB and adding "views", add some to your app and create a website for your calculator so that people can enter the things they need to work out.






