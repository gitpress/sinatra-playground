# Installing Sinatra

You need to have Ruby installed on your computer to run Sinatra. If you haven't gotten that sorted do that first.

> If you need some help with that, see this guide here

Like all Ruby Gems, you need to run the gem install command. Write the following in a folder you want to work in:

```bash
gem install sinatra
```

Let's create a subdirectory to host our first add. I'm calling mine the uninspiring "howdo". Run:

```bash
mkdir howdo && cd howdo
```

> if you using a Windows system, this command won't work. Google the Windows alternative or use the Git bash shell. Alternatively use a virtual machine and run a linux box or go to a in-browser development environment like [Codio](codio.com).

The && operator stands for logical AND, which basically means: "if the first command works, do that AND the second".

This command created our directory as well as moved into it. Smashing.

In the section, let's create your first rather basic app!