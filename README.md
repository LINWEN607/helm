Kubernetes 要求用于 imagePullSecrets 的 Secret 类型必须是：

深色版本

kubernetes.io/dockerconfigjson



kubectl create secret generic docker-credentials \
  --from-file=.dockerconfigjson=/root/.docker/config.json \
  --type=kubernetes.io/dockerconfigjson \
  -n teset-server
