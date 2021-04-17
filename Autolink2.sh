#!/bin/bash
echo "Links to Different Notes" > index.md
echo $(git ls-tree -r main --name-only | grep html)

