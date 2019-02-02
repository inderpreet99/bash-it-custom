pip3 install awscli

if [[ ! -f ~/.aws/credentials ]]; then
    echo "Running AWS configure for first time. Get credentials from AWS Console."
    aws configure
fi
