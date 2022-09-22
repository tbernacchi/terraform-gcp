# k8s

In this repo, we're going to set our Kubernetes cluster on our `kubectl` and deploy the application.

## Usage

Setting the cluster on the `~user/.kube/config`:

```bash
gcloud container clusters get-credentials <cluster-name> --region southamerica-east1
```

You can check if the cluster it's up:

```bash
kubectl get nodes -o wide
```

Deploying the application:

```bash
kubectl create -f .
```

After the app it's running you can `port-forward` to check the UI of the app on your Browser like this:

```bash
kubectl port-forward svc/my-application-svc 3000:80
```
