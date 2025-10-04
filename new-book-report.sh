#!/usr/bin/env bash

# Ask simple questions
echo "📚 Let's write about your book!"
echo ""
echo "What's the book title?"
read -r TITLE

# Create clean filename
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
YEAR=$(date +%Y)
POST_DIR="content/book-reports/$YEAR/$SLUG"

hugo new content "$POST_DIR/index.md"

open "$POST_DIR"

echo ""
echo "✅ Book report created!"
echo "📂 $POST_DIR/index.md"
