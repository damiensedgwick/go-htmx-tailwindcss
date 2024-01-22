#!/bin/bash

# Ask the user what they would like to call the project and store the result in a variable called PROJECT_NAME
read -p "What would you like to call your project? " PROJECT_NAME

echo "Generating your go-htmx-tailwindcss web application..."

# Example project URL will be https://github.com/damiensedgwick/go-htmx-tailwindcss/_example

# Curl the entire contents of the _example directory from the go-htmx-tailwindcss repository into a new directory called go-htmx-tailwindcss

# Set the repository URL
REPO_URL="https://github.com/damiensedgwick/go-htmx-tailwindcss.git"
EXAMPLE_DIR="_example"
DEST_DIR="$PROJECT_NAME"

# Clone the repository and copy the _example directory
git clone --depth 1 $REPO_URL $DEST_DIR
cp -r $DEST_DIR/$EXAMPLE_DIR/* $DEST_DIR

# Remove the cloned repository
rm -rf $DEST_DIR/.git

# Remove everything except the _example directory
find $DEST_DIR -mindepth 1 -maxdepth 1 ! -name $EXAMPLE_DIR -exec rm -rf {} +

# Move the contents of the _example directory up one level
mv $DEST_DIR/$EXAMPLE_DIR/* $DEST_DIR

# Remove the _example directory
rm -rf $DEST_DIR/$EXAMPLE_DIR

echo "Your go-htmx-tailwindcss web application has been generated in the $DEST_DIR directory."
