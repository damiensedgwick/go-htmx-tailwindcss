.PHONY: clean tailwindcss build run

BINARY_NAME=go-htmx-tailwindcss

build:
	@echo "Building Go binary..."
	@go build -o bin/server cmd/server.go

clean:
	@echo "Cleaning up previous build..."
	@rm -rf bin

run:
	@echo "Running Go binary..."
	@go run cmd/server.go

watch-tailwindcss:
	@echo "Watching TailwindCSS..."
	@~/scripts/tailwindcss -i resources/tailwind.css -o static/css/tailwindcss.css --watch

tailwindcss:
	@echo "Building TailwindCSS..."
	@~/scripts/tailwindcss -i resources/tailwind.css -o static/css/tailwindcss.css

all: clean tailwindcss build run