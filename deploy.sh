docker image build \
	--tag 462824681409.dkr.ecr.eu-central-1.amazonaws.com/dev-secret-service:latest \
	--build-arg DOMAIN="secret.andfrankly.com" \
	--build-arg VAULT_ADDR="http://vault:8200" \
	--build-arg VAULT_TOKEN="supersecret" .

eval $( aws ecr get-login --no-include-email --region eu-central-1 )

docker image push 462824681409.dkr.ecr.eu-central-1.amazonaws.com/dev-secret-service:latest
