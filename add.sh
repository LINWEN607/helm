kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d #密码

kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'

argocd login argocd.example.com --username admin --password mypassword #登录

argocd cluster add --name bingo --context <context-name --kubeconfig ~/.kube/config   #添加集群

kubectl patch svc tekton-dashboard -n tekton-pipelines -p '{"spec": {"type": "NodePort"}}'
