#!/bin/bash
# returns the space-separated names of the packages that were changed
# from the base branch to the internal merge commit

CHANGED_PACKAGES=$(git diff $GITHUB_BASE_REF $GITHUB_SHA --name-only |
                  grep -o "\bpackages/[^/]\+\b" | sed "s/packages\///" | uniq | tr '\n' ' ')

echo "$CHANGED_PACKAGES"