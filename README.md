# Go, HTMX & TailwindCSS

A quick and easy way to get setup with **The Best** technologies on the web!

## Getting Started
I have tried to make it as easy as possible to get setup with Go, HTMX & Tailwind. You
can use the below command to create a new project on your machine.

`curl -s "https://go-htmx-tailwindcss.fly.dev/build" | bash`

Once you have created a new project, you may want to change the project directory name
and you will have to setup the [Standalone CLI](https://tailwindcss.com/blog/standalone-cli)
for TailwindCSS.

## Running
Running the application should be quick and easy using the following command:

`make all`

The application comes with some Tailwind styling included. When you run the above command,
it will clean up the existing build and generate your web application from scratch.

## Deploying
I am using Docker behind the scenes and I have deployed the project using [Fly.io](https://fly.io/).
I recommend checking them out for your deployment neeeds, especially if you want an easy way to deploy
containerised applications.
