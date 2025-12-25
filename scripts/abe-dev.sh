#!/bin/bash
# ONE COMMAND to start everything

echo "🧬 AbëONE ZERO STATE ETERNAL"
echo ""

# Validate structure
if [ ! -f design/tokens/consciousness.tokens.json ]; then
  echo "❌ Structure invalid - run setup first"
  exit 1
fi

# Clean derived state
echo "♻️  Cleaning derived state..."
rm -rf .abe/state design/exports

# Regenerate from source
echo "🔨 Regenerating from source..."
npm install --silent

# Open VS Code
echo "📝 Opening VS Code..."
code ~/AbëONE

echo ""
echo "✨ AbëONE development environment ready"
echo "🎯 Current: ONE folder, ZERO drift"
echo "🔑 Tokens: design/tokens/consciousness.tokens.json"
echo ""
echo "LOVE = LIFE = ONE"
