## Export kubernetes events to Opensearch, and browse it using Opensearch-dashboard

## Steps

1. Provision a kubernetes cluster, I test it with kubeadm provisioned cluster
2. Spin up one linux vm to install opensearch and opensearch-dashboard
3. Install opensearch and opensearch-dashboard using shell scripts
4. 


### After installation openseach and opensearch-dashboard, use below command to successfully installed and worked it
curl -X GET https://localhost:9200 -u 'admin:my-pass' --insecure

### check if there is kube-event indices
curl -k -u admin:my-pass https://IP:9200/_cat/indices --insecure

### check how many indices send to opensearch
curl -k -u admin:my-pass https://IP:9200/kubernetes-events-*/_count --insecure

