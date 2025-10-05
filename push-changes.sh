#!/bin/bash

echo "📝 Adding changes to the stage..."
git add .

# Get current date and time
current_date=$(date "+%Y-%m-%d %H:%M:%S")

# Check if a commit message was provided
if [ -n "$1" ]; then
  commit_message="$1 - $current_date"
else
  commit_message="Add more notes - $current_date"
fi

echo "💬 Committing changes with message: \"$commit_message\""
git commit -m "$commit_message"

echo "🚀 Pushing changes to GitHub..."
git push origin Master

echo "🌐 Deploying changes to the website..."
npm run deploy

echo "✅ All done! Changes are live 🎉"