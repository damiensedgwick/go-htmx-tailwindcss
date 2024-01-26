.PHONY: clean tailwindcss templ build run

BINARY_NAME=go-htmx-tailwindcss

build:
	@echo "Building Go binary..."
	@go build -o bin/${BINARY_NAME} cmd/main.go

clean:
	@echo "Cleaning up previous build..."
	@rm -rf bin
	@echo "Cleaning up previous TailwindCSS..."
	@rm -rf static/css/tailwindcss.css

run:
	@echo "Running Go binary..."
	@go run cmd/main.go

tailwindcss:
	@echo "Building TailwindCSS..."
	@/home/dks/scripts/tailwindcss -i lib/tailwindcss.css -o static/css/tailwindcss.css --minify

templ:
	@echo "Building templates..."
	@/home/dks/go/bin/templ generate

all: clean tailwindcss templ build run