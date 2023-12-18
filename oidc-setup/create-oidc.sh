#!/usr/bin/env bash
aws cloudformation deploy \
    --template-file oidc-cf.yaml --stack-name=github-actions-oidc \
    --region eu-west-2 --capabilities CAPABILITY_NAMED_IAM
