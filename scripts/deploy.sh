# #!/bin/bash

# # Load environment variables or replace with actual values
# STACK_NAME="iam-user-stack"
# USER_NAME=$1
# TEMPLATE_FILE="user-creation.yaml"

# # Check if the user already exists
# EXISTING_USER=$(aws iam list-users --query "Users[?UserName=='$USER_NAME'] | [0].UserName" --output text)

# if [ "$EXISTING_USER" == "None" ]; then
#   echo "User $USER_NAME does not exist. Proceeding with creation."

#   # Deploy CloudFormation stack
#   aws cloudformation deploy \
#     --stack-name "$STACK_NAME-$USER_NAME" \
#     --template-file "$TEMPLATE_FILE" \
#     --parameter-overrides UserName="$USER_NAME" \
#     --capabilities CAPABILITY_NAMED_IAM

#   echo "User $USER_NAME created successfully."
# else
#   echo "User $USER_NAME already exists. Skipping creation."
# fi
