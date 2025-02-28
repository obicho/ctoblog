#!/bin/bash

QUEUE_DIR="content/queue"
CONTENT_DIR="content/essays"
CURRENT_DATE=$(date +"%Y-%m-%dT%H:%M:%S%z")

echo "Checking queue for new posts..."

for FILE in "$QUEUE_DIR"/*.md; do
    if [ -f "$FILE" ]; then
        BASENAME=$(basename "$FILE" .md)
        DEST_DIR="$CONTENT_DIR/$BASENAME"

        # Extract publishDate
        PUBLISH_DATE=$(grep -E '^publishDate:' "$FILE" | awk '{print $2}')

        # If publishDate exists, compare it to the current date
        if [[ -n "$PUBLISH_DATE" ]]; then
            if [[ "$PUBLISH_DATE" > "$CURRENT_DATE" ]]; then
                echo "⏳ Skipping $BASENAME (publishDate is in the future: $PUBLISH_DATE)"
                continue
            fi
        fi

        echo "Publishing: $FILE"

        # Create a destination folder
        mkdir -p "$DEST_DIR"

        # Ensure `draft: true` is changed to `draft: false`
        sed -i '' 's/^draft: true$/draft: false/' "$FILE"

        # Move the markdown file
        mv "$FILE" "$DEST_DIR/"

        # Move images if they exist
        if [ -d "$QUEUE_DIR/$BASENAME" ]; then
            mv "$QUEUE_DIR/$BASENAME" "$DEST_DIR/"
        fi

        echo "✅ Published $BASENAME (draft set to false)"
    fi
done

echo "Publish check complete."
