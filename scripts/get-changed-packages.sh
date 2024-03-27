#!/bin/bash
# gets the newline separated names of the changed packages between the
# base branch and the internal merge commit

CHANGED_PACKAGES=$(git diff $GITHUB_BASE_REF $GITHUB_SHA --name-only |
                  grep -o "\bpackages/[^/]\+\b" | sed "s/packages\///" | uniq)

echo "$CHANGED_PACKAGES"