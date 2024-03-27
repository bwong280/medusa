#!/bin/bash

# Run git diff to get the changed packages between the base branch and the internal merge commit
CHANGED_PACKAGES=$(git diff $GITHUB_BASE_REF $GITHUB_SHA --name-only |
                  grep -o "\bpackages/[^/]\+\b" | sed "s/packages\///" | uniq)

# Output the changed packages
echo "$CHANGED_PACKAGES"