.PHONY: clean tailwindcss templ build run

BINARY_NAME=<your-binary-name>

build:
	@echo "Building Go binary..."
	@go build -o bin/${BINARY_NAME} cmd/main.go

clean:
	@echo "Cleaning up previous build..."
	@rm -rf bin

run:
	@echo "Running Go binary..."
	@go run cmd/main.go

tailwindcss:
	@echo "Building TailwindCSS..."
	@<path-to-your-tailwind-executable> -i lib/tailwindcss.css -o static/css/tailwindcss.css --minify

templ:
	@echo "Building templates..."
	@<path-to-your-templ-executable> generate

all: clean tailwindcss templ build run