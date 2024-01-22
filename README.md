# Go, HTMX & TailwindCSS

A quick and easy way to get setup with **The Best** technologies on the web!

## Setup
In order to use the repo, you will need to download and setup [Standalone TailwindCSS](https://tailwindcss.com/blog/standalone-cli) - 
this makes it easy to use TailwindCSS without node, npm or any node_modules. I like to use an alias for the TailwindCSS executable so
that it is easy to use from the command line.

In the `Makefile` you will need to amended the commands for using the TailwindCSS executable so that it matches the correct path.

## Running
Running the application should be quick and easy, simply type `make all` and everything should be cleaned, build and launched ready
for you to visit in the browser on [localhost:8080](localhost:8080)

## Deploying
I've deployed the project using [Fly.io](https://fly.io/) - I recommend checking them out for your deployment neeeds!

**NB** I wrote this in a rush so expect it to be wrong and i will try and come back to make sure it is correct!
