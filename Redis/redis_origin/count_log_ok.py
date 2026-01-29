#!/usr/bin/env python3

import sys
import re

if len(sys.argv) > 1:
    with open(sys.argv[1], 'rb') as f:
        content = f.read().decode('utf-8', errors='ignore')
else:
    content = sys.stdin.read()

# ANSI 코드 제거
clean = re.sub(r'\x1b\[[0-9;]*m', '', content)

count = clean.count('[ok]')
print(f"[ok] count: {count}")
