Let's continue working on our tiny Sinatra app but add the ability to handle URL parameters.

By this we mean, the ability to have routes like: ```/author/1/``` , ```articles?title=learningSinatra&author=AndrewDuckworth``` or ```/andrew?=isniceguy```.

So, we want our app be able to handle **author**, **articles** or **andrew** and the additional parameters of ```?title=learningSinatra&author=AndrewDuckworth``` etc. after them.

If you've ever clicked on some blog spam on Twitter you may have noticed all of the following parameters used to track you and the origin of your arrival to the website.

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

1. Like the last section, we are returning a string 
2. This time, we are using the the Ruby technique of ```#{}``` which injects into any string the result of some Ruby code
3. Inside that we've injected the params techinque which lets us access the additional parameters of the URL
4. We are then accessing the :name part of our URL paramaters. Which we do inside a square bracket next to the params.

So, a user types in something like /giantsquid

By having the params method we can access the giantsquid string. Which we have placed within the :name symbol.

The reason we target params with a square bracket is so that we can build many parameters on top of each other.

Let's see it in action now. Start your Sinatra server:

```bash
ruby server.rb
```

On our default route "/" we get back the same message as last section. Add something to the default route and see what you get back:

