#!/bin/sh

gum style --border-foreground "#EA33ED" --border rounded --align center --margin "1 0" --padding "0 5" \
  "Project Setup" \
  "Let's get things started!"

# Setup
NAME=$(gum input --cursor.foreground "#F2978A" --placeholder "name")
TYPE=$(gum choose --cursor.foreground "#F5F451" --header.foreground "#F2978A" "deno" "pnpm")

# Create Structure
mkdir "$NAME"
cd "$NAME"
git ic > /dev/null

$TYPE init -q > /dev/null
git add .

MSG_COMMIT=$(gum style "Commit your ")
MSG_BOILERPLATE=$(gum style --foreground "#F5F451" --italic "Boilerplate")
gum join "$MSG_COMMIT" "$MSG_BOILERPLATE"
COMMIT_MESSAGE=$(gum input --value "chore: " --placeholder "Commit Message")
git commit -m "$COMMIT_MESSAGE" > /dev/null
gum style --foreground "#949cbb" "done"

echo ""
MSG_COMMAND=$(gum style "cd ")
MSG_DIRECTORY=$(gum style --foreground "#F5F451" --italic "$NAME")
gum join "$MSG_COMMAND" "$MSG_DIRECTORY"
gum style --foreground "#949cbb" "to get started"
echo ""
