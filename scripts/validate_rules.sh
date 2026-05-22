#!/usr/bin/env bash
echo "Validating alerting rules..."
if command -v promtool &>/dev/null; then
    find rules/ -name "*.yml" | while read f; do
        promtool check rules "$f" && echo "  ✅ $f" || echo "  ❌ $f"
    done
else
    echo "promtool not found — install Prometheus to validate rules"
    python3 -c "import yaml; [yaml.safe_load(open(f)) for f in __import__('glob').glob('rules/*.yml')]; print('YAML syntax OK')"
fi
