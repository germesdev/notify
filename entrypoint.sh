#!/bin/sh -l

RESP_CODE=$(curl -so /dev/null -w '%{response_code}' -X POST -H "Content-Type: application/json" --data "{ \"commit\": \"https://github.com/$GITHUB_REPOSITORY/commit/$GITHUB_SHA/checks\", \"repository\": \"$GITHUB_REPOSITORY\", \"status\": \"$2\", \"actor\": \"$GITHUB_ACTOR\", \"step\": \"$3\", \"branch\": \"$GITHUB_REF\", \"msg\": \"$4\" }" $1)
echo "::set-output name=response::$RESP_CODE"

