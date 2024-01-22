# Go, HTMX & TailwindCSS

A quick and easy way to get setup with **The Best** technologies on the web!

## 📖 Getting Started 
I have tried to make it as easy as possible to get setup with Go, HTMX & Tailwind.
You can use the below command to create a new project on your machine.

`curl -s "https://go-htmx-tailwindcss.fly.dev/build" | bash`

Once you have created a new project, you may want to change the project directory
name and you will have to setup the [Standalone CLI](https://tailwindcss.com/blog/standalone-cli)
for TailwindCSS.

After you have installed the standalone cli, you need to edit the following lines
in your Makefile so this part of the command path `~/scripts/tailwindcss` matches
the correct path for your machine and your executable.

```
tailwindcss:
	@echo "Building TailwindCSS..."
	@~/scripts/tailwindcss -i resources/tailwind.css -o static/css/tailwindcss.css --minify
```

## 🏃‍♂️ Running Your Application
Running the application should be quick and easy using the following command:

`make all`

When you run the above command, it will clean up the existing build and it will do
a fresh build of your application.

**NB** If you have not installed the standalone cli for TailwindCSS, the above
command will likely fail.

## 🚀 Going Live
I am using Docker behind the scenes and I have deployed the project using [Fly.io](https://fly.io/).
I recommend checking them out for your deployment neeeds, especially if you want an
easy way to deploy containerised applications.
