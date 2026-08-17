#!/bin/bash

# set the subscription
export ARM_SUBSCRIPTION_ID="8911199b3c0-35d0-4d50-870d-048f32c71e67"

# set the application / environment
export TF_VAR_application_name="observability"
export TF_VAR_environment_name="dev"

# set the backend 
export BACKEND_RESOURCE_GROUP_NAME="rg-volha.yurchanka"
export BACKEND_STORAGE_ACCOUNT_NAME="terraformtest8362"
export BACKEND_CONTAINER_NAME="tfstate"
export BACKEND_KEY=$TF_VAR_application_name-$TF_VAR_environment_name

# run terraform init
terraform init \
  -backend-config="resource_group_name=${BACKEND_RESOURCE_GROUP_NAME}" \
  -backend-config="storage_account_name=${BACKEND_STORAGE_ACCOUNT_NAME}" \
  -backend-config="container_name=${BACKEND_CONTAINER_NAME}" \
  -backend-config="key=${BACKEND_KEY}"

terraform "$@"

rm -rf .terraform