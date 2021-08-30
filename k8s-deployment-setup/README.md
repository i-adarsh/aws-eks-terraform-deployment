# kubernetes-ingress-app
<br />
# jenkins ALL=(ALL)  NOPASSWD:ALL
<br />
kubectl get all -n nginx-ingress<br />
<br />
# ===========================<br />
# NAMESPACE<br />
# ===========================<br />
NameSpace<br />
https://github.com/kubernetes-sigs/kustomize/blob/master/examples/multibases/multi-namespace.md<br />
# ===========================<br />
<br />
<br />
<br />
<br />
# ===========================<br />
# KUSTOMIZE<br />
# ===========================<br />
<br />
Kustomize<br />
kustomize gitub<br />
https://github.com/kubernetes-sigs/kustomize<br />
<br />
kustomize build . > kdep.yaml<br />
<br />
kubectl apply -f kdep.yaml 
<br />
kubectl delete -f kdep.yaml<br />
<br />
kubectl get all -n dev<br />
<br />
kustomize build . | kubectl create -f -<br />
# ===========================
<br />
<br />
<br />
# ===========================<br />
# METRIC SERVER<br />
# ===========================<br />
<br />
kubernetes metrics server<br />
HPA (Horizontal Pod AutoScaler)<br />
https://github.com/kubernetes-sigs/metrics-server<br />
<br />
kubectl top nodes -n dev<br />
<br />
kubectl top pods -n dev<br />
<br />
kubectl get hpa/application-cpu -n dev<br />
<br />
kubectl api-versions<br />
<br />
kubectl autoscale deploy dev-revving --min 1 --max 10 --cpu-percent 10  -o yaml > hpa.yaml<br />
# ===========================<br />
sudo amazon-linux-extras install epel -y<br />
yum install siege -y<br />

siege -q -c 5 -t 1m http://3.84.118.138.nip.io:31550/
# ===========================<br />

# ===========================<br />
# LIVENESS AND READINESS PROBE
# ===========================<br />

kubectl get events

# ===========================<br />
# SSL Certificate
# ===========================<br />
<br />
https://docs.bitnami.com/tutorials/secure-kubernetes-services-with-ingress-tls-letsencrypt


#

https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz


# ===========================<br />
# PVC
# ===========================<br />

kubectl exec -n dev dev-revving-86df7fdf78-nkspb -- ls

kubectl exec -n dev dev-revving-86df7fdf78-nkspb -- ls /mydata

kubectl exec -n dev dev-revving-86df7fdf78-lmccv -- touch /mydata/adarsh

kubectl exec -n dev dev-revving-86df7fdf78-lmccv -- ls /mydata/