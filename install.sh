#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

echo "==> Installing dependencies..."
bundle install --quiet

echo "==> Preparing database..."
bundle exec rails db:prepare

echo "==> Seeding recipes..."
bundle exec rails db:seed

echo ""
echo "  Recipe Box is ready!"
echo "  Start the server:  bundle exec rails server -b 0.0.0.0 -p 3000"
echo "  Then open:         http://localhost:3000"
echo ""
