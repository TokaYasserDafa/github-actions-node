#!/bin/bash

pass() {
  echo "✅ $1"
}

fail() {
  echo "❌ $1"
  exit 1
}

result=$(node -e "const { greet } = require('./src/greet'); console.log(greet('Toka'));")
[ "$result" = "Hello Toka" ] && pass "Greets Toka" || fail "Greets Toka"

result=$(node -e "const { greet } = require('./src/greet'); console.log(greet('Alice'));")
[ "$result" = "Hello Alice" ] && pass "Greets Alice" || fail "Greets Alice"

result=$(node -e "const { greet } = require('./src/greet'); console.log(greet(''));")
[ "$result" = "Hello " ] && pass "Handles empty string" || fail "Handles empty string"

echo "🎉 All tests passed!"