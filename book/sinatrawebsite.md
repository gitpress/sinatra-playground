# Build a website with Sinatra

In this chapter we will learn how to create a simple but fully functioning website with Sinatra.

We will cover:

* routes
* views with ERB (or embedded ruby)
* using Sass (to create CSS) and JavaScript with Sinatra
* a contact form so that people can message us
* Using the Bootstrap UI framework

## Add our routes

Let's start by sketching out what we want to build and the bits we need to fulfil the build.

We want to be able to mock up the common elements of a simple site, built in Sinatra.

We need a landing page. A pretty simple one at that. Extolling the virtue of using Sinatra.

We also want a place to list all of the amazing apps we have built so far, a profile and portfolio page

We also want a contact form that we can used to capture people's details.

Let's get building.

##### Create our working directory

Let's create and move into the directory we will build our site. I will call it the rather inspiring "/website". Here is the command I will run:

```bash
mkdir website && cd website && touch server.rb 
```

This will:

* create the website directory
* move into that directory
* create a ruby file called server.rb

Let's also create some other files. Create the following in your website directory:

1. Create a folder called public
2. Inside that folder create three more called css, js, img
3. Create a folder called views in your website folder
4. Inside that folder create two files called index.erb and layout.erb

So, after that your website folder should look like:

```html
/website
  server.rb
  /public
      /css
      /js
      /img
  /views
      index.erb
      layout.erb

```

The only thing really new to you might be the views folder. That is the default place for Sinatra (and many Ruby projects) where you place things like your layout folder and webpages written in your template language of choice.

> If you are wondering how you learn these things without a book, it really is just a case of reading the documentation. It may be tough when you are learning but offical guides and documentation are the best place to learn those small but crucial ins and outs of a project. Just keep reading and re-reading them. Make it a part of your process of using a library or framework. Eventually it'll sink in and your'll surprise yourself.
> and the more you do it, the more you'll get good at reading documentation.

For this book we'll use Erb or embedded ruby, but many Sinatra developers use Haml or Slim

>Notice about using them

The public folder is also a default for Sinatra. It will expect your CSS etc. to be placed in there and make them "public". That said, even though they are placed in your "public" folder, in terms of your website and users, the public files will look like they are being "served" from ```/css/etc.``` etc.

We are going to keep pretty close to Sinatra defaults to have less things to worry about but if you want to change them, feel free to browse the [Sinatra documentation concerning static files](http://www.sinatrarb.com/intro.html#Static%20Files).

#### Create our first routes

Let's create our first routes.

We need to create our home page, portfolio page, about us page and a contact page.

Open up ```server.rb``` and write the following:

```ruby
require 'sinatra'

get '/' do
  erb :index
end

```

What this does is tell Sinatra, when someone hits our homepage give them the erb file called index.erb. 

Another convention of Sinatra and indeed Rails, is that unless another option is given, render tha index.erb page inside the layout.erb file.

If that sounds a bit odd, it isn't. The layout.erb file is the place where you define your cookie-cutter default structure for a page. The things that basically don't change.

If you have ever written a static HTML website by hand you'll know how painful it can be updating each and every file with a simple footer or navbar change. Nevermind, adding extra pages etc etc.

The layout file basically removes that pain.

You can switch layouts, sometimes you'll have an admin specific layout or maybe a blog specific layout.

Let's see that in action.

In your index.erb file write:

```html
<h1>It's goodnight from index.erb</h1>
```
And in your layout.erb file write:

```html
<%= yield %>

<h2>And it's goodnight from him</h2>
```

Fire up your Sinatra server - using ```ruby server.rb``` and hit your root url.

You should see the "witty banter".

If you haven't encountered it before, everything between the <% %> is the Ruby code embedded into your HTML. You can do amazing things with this. Essentially, it is best used to call your database and any data you need placing into your HTML programmically.

We'll do more with it later.

Essentially, when you see ```<% %>``` it is embedded code calling your server. When you see the ```<%= %>``` with an equals mark after the % it means your out putting that ruby code.

That is, if you include the equals mark you are saying to the Ruby, don't just run the code, actually put the output in the HTML.

> #### ERB crash course
> Want to get a quick handle on how erb works? Let's do something with it quick. If you already know about erb, don't worry about taking this quick detour through erb.
> include thingy afterwards explaining it....

As well as a master layout, you can also create things called partials.

A partial is basically a small template that you can include into your template files. you create a partial like a normal erb page but with an underscore like so: ```_navbar.erb```

You then include it inside a template like

```html
<%= partial 'navbar' %>

<%= yield %>
```

The underscore is just to indicate it is a partial. When you ask your erb file to include it you don't need to include the underscore in the name.

The benefit of this is that you can now create small bits of HTML and erb therefore making it easier to focus on creating, updating or maintaining small bits of software, bit by bit.

Let's see all of these new things come together. Write the following in each file:

in ```../viewsindex.erb```:
```erb
<div class="jumbotron">
  <div class="container">
    <h1>Learning Sinatra</h1>
    <p class="lead">Sinatra is a lightweight Ruby DSL that helps you quickly create apps</p>
  </div>
</div>
```

In this file we have added a class called jumbotron which gives us a large shoutout area with a grey background. Inside it we have defined a container area and within that a heading and paragraph element. The paragraph 

in ```../views/layout.erb```:
```erb
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Learning Sinatra</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
  </head>
  <body>
    
    <%= yield %>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  </body>
</html>
```

In this file what we have done is add our basic html page skeleton including the CSS and JS from a CDN. This is everything Bootstrap asks us to include.


## Add our Scss

## Add our templates

## Add some styles and structure

## Build a contact form

We need to add an extra gem to our project to sort out a contact form so that it can email us.

```ruby
gem 'pony'
```

Pony is a gem that enables Ruby to easily send emails.

To set up Pony we need to:

1. create a route for our contact form
2. create the code that can handle our contact form
3. add the html which will send our app the contact form information
4. ensure we have configured the correct STMP details from gmail