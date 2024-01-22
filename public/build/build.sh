#!/bin/bash

echo "Generating your go-htmx-tailwindcss web application..."

# Example project URL will be https://github.com/damiensedgwick/go-htmx-tailwindcss/_example

# Curl the entire contents of the _example directory from the go-htmx-tailwindcss repository into a new directory called go-htmx-tailwindcss

# Set the repository URL
REPO_URL="https://github.com/damiensedgwick/go-htmx-tailwindcss.git"
EXAMPLE_DIR="_example"
DEST_DIR="go-htmx-tailwindcss"

# Clone the repository and copy the _example directory
git clone --depth 1 $REPO_URL $DEST_DIR
cp -r $DEST_DIR/$EXAMPLE_DIR/* $DEST_DIR

# Remove the cloned repository
rm -rf $DEST_DIR/.git

echo "Your go-htmx-tailwindcss web application has been generated in the $DEST_DIR directory."
