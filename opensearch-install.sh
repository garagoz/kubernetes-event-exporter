#!/bin/bash

# Opensearch installation
sudo apt-get update && sudo apt-get -y install lsb-release ca-certificates curl gnupg2
curl -o- https://artifacts.opensearch.org/publickeys/opensearch.pgp | sudo gpg --dearmor --batch --yes -o /usr/share/keyrings/opensearch-keyring
echo "deb [signed-by=/usr/share/keyrings/opensearch-keyring] https://artifacts.opensearch.org/releases/bundle/opensearch/2.x/apt stable main" | sudo tee /etc/apt/sources.list.d/opensearch-2.x.list
sudo apt-get update -y
sudo env OPENSEARCH_INITIAL_ADMIN_PASSWORD=Opensearch123! apt-get install opensearch -y
sudo systemctl enable opensearch
sudo systemctl start opensearch


# open this and edit
# sudo vim /etc/opensearch/opensearch.yml
# edit this network.host: localhost > network.host: 0.0.0.0

sudo systemctl restart opensearch