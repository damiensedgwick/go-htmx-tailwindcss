# Go, HTMX & TailwindCSS

A quick and easy way to get setup with **The Best** technologies on the web! This
projects uses [Templ](https://github.com/a-h/templ) to make use of their fantastic
templating engine. You will need to have this installed or set this up in order
to make use of this project.

## 📖 Getting Started 
I have tried to make it as easy as possible to get setup with Go, HTMX & Tailwind.
To get up and running with the project, you will have to take a few, minimal steps
which I have highlighted below.

#### Prequisites

* [Go](https://go.dev/)
* [Templ](https://github.com/a-h/templ)
* [TailwindCSS](https://tailwindcss.com/blog/standalone-cli)

#### Clone down the example project

`curl -s "https://go-htmx-tailwindcss.fly.dev/api/v1/build" | bash`

#### Change the directory name to your desired project name

`mv go-htmx-tailwindcss <your-project-name>`

#### Update your Makefile

There are 3 parts to this.

```sh
# Update your binary name
BINARY_NAME=<your-binary-name>
```

```sh
# Update your tailwind path
tailwindcss:
	@echo "Building TailwindCSS..."
	@<path-to-your-tailwind-executable> -i lib/tailwindcss.css -o static/css/tailwindcss.css --minify
```

```sh
# Update your templ path
templ:
	@echo "Building templates..."
	@<path-to-your-templ-executable> generate
```

## 🏃‍♂️ Running Your Application
Running the application should be quick and easy using the following command:

`make all`

Providing all of the steps have been followed and they are in fact correct,
when you run the above command, it should clean up the existing bin directory and 
it will do a fresh build of your application.

## 🚀 Going Live
I am using Docker behind the scenes and I have deployed the project using [Fly.io](https://fly.io/).
I recommend checking them out for your deployment neeeds, especially if you want an
easy way to deploy containerised applications.
