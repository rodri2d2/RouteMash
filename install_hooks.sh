#!/bin/bash

# Global hooks folder path
GLOBAL_HOOKS_DIR="$HOME/.git-hooks"

# Local hooks folder path
LOCAL_HOOKS_DIR="$(git rev-parse --show-toplevel)/.git/hooks"

# Create the global hooks folder if it does not exist
if [ ! -d "$GLOBAL_HOOKS_DIR" ]; then
  echo "Creating the global hooks folder in $GLOBAL_HOOKS_DIR..."
  mkdir -p "$GLOBAL_HOOKS_DIR"
fi

# Check if the local hooks folder existse
if [ ! -d "$LOCAL_HOOKS_DIR" ]; then
  echo "Error: Local hooks folder in $LOCAL_HOOKS_DIR was not found!"
  exit 1
fi

# Iterate on local hooks
for local_hook in "$LOCAL_HOOKS_DIR"/*; do
  hook_name=$(basename "$local_hook")
  global_hook="$GLOBAL_HOOKS_DIR/$hook_name"

  # If the global hook already existse
  if [ -f "$global_hook" ]; then
    echo "El hook global $hook_name ya existe."
    read -p "¿Would you like to repalce? (yes/no): "
    if [[ "$response" == "yes" || "$response" == "y" ]]; then
      echo "Replacing $hook_name on global hooks..."
      cp "$local_hook" "$global_hook"
    else
      echo "Creating a copy as copy_$hook_name..."
      cp "$local_hook" "$GLOBAL_HOOKS_DIR/copy_$hook_name"
    fi
  else
    # Copy the local hook to the global hook if it does not exist
    echo "Copy $hook_name to global hooks..."
    cp "$local_hook" "$global_hook"
  fi
done

# Ensure that hooks are executable
chmod +x "$GLOBAL_HOOKS_DIR"/*

echo "Hook installation completed"
