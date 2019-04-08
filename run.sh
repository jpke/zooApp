source ./.env

# echo "AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID"

if [[ $1 == "apply" ]]; then
    terraform apply terraform.out
elif [[ $1 == "destroy" ]]; then
    terraform destroy \
        -var aws_access_key=$AWS_ACCESS_KEY_ID \
        -var aws_secret_key=$AWS_ACCESS_KEY
else
    rm ./.terraform
    terraform init
    terraform plan \
        -var aws_access_key=$AWS_ACCESS_KEY_ID \
        -var aws_secret_key=$AWS_ACCESS_KEY \
        -out terraform.out
fi