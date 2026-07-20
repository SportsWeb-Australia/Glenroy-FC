#!/bin/bash
cd "$(dirname "$0")"
echo "Cleaning stale git locks..."
rm -f .git/*.lock* .git/objects/maintenance.lock* .git/objects/*/tmp_obj_* 2>/dev/null
echo "Staging + committing any changes..."
git add -A
git commit -m "Glenroy FC website concepts — 4 designs + landing, official crest" 2>/dev/null || echo "(nothing new to commit — pushing existing commit)"
echo "Pushing to GitHub (SportsWeb-Australia/Glenroy-FC)..."
git push -u origin main
echo ""
echo "======================================"
echo "Done. You can close this window."
echo "======================================"
read -n 1 -s
