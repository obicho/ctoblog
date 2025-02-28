#!/bin/bash

# Rename process so it appears in Activity Monitor
exec -a HugoPublisherCTOBlog bash -c '
    caffeinate -i &  
    CAFFEINATE_PID=$!

    echo "📢 Waiting for 5 AM PST..."

    while true; do
        CURRENT_HOUR=$(date +"%H")
        CURRENT_MINUTE=$(date +"%M")

        if [[ "$CURRENT_HOUR" == "15" && "$CURRENT_MINUTE" == "22" ]]; then
            echo "🕒 Running publish and deploy scripts..."
            ./publish.sh
            ./deploy.sh
            echo "✅ Publish & Deploy complete. Exiting."
            kill $CAFFEINATE_PID
            exit 0
        fi
        sleep 30
    done
'
