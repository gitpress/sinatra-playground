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

We want to be able to sell our Sinatra development and consultancy skills through our website, built in Sinatra.

We need a landing page. A pretty simple one at that.

We also want a place to list all of the amazing apps we have built so far, a profile page

We also want a contact form that we can used to capture people's details

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