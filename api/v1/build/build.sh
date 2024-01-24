#!/bin/bash

echo "Generating your go-htmx-tailwindcss web application..."

# Set some variables
REPO_URL="https://github.com/damiensedgwick/go-htmx-tailwindcss.git"
EXAMPLE_DIR="__example__"
DEST_DIR="go-htmx-tailwindcss"

# Clone the repository and copy the _example directory
if git clone --depth 1 "$REPO_URL" "$DEST_DIR" && cp -r "$DEST_DIR/$EXAMPLE_DIR"/* "$DEST_DIR"; then
    # Remove the cloned repository
    rm -rf "${DEST_DIR:?}/.git"

    # Remove everything except the _example directory
    find "$DEST_DIR" -mindepth 1 -maxdepth 1 ! -name "$EXAMPLE_DIR" -exec rm -rf {} +

    # Move the contents of the _example directory up one level
    mv "$DEST_DIR/$EXAMPLE_DIR"/* "$DEST_DIR"

    # Remove the _example directory
    rm -rf "${DEST_DIR:?}/$EXAMPLE_DIR"

    echo "Your go-htmx-tailwindcss web application has been generated in the $DEST_DIR directory."
else
    echo "Error: Cloning the repository or copying files failed."
fi