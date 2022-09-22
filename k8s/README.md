# k8s

In this repo, we're going to set our Kubernetes cluster on our `kubectl` and deploy the application.

But before that we're goint to need to build the app using that `Dockerfile` and send the image to the DockerHub.

```bash
docker login
```

```bash
docker build --no-cache --tag tadeuuuuu/servian:1.0 . && sleep 5 &&  docker push tadeuuuuu/servian:1.0
```

## Usage

Setting the cluster on the `~user/.kube/config`:

```bash
gcloud container clusters get-credentials <cluster-name> --region southamerica-east1
```

You can check if the cluster it's up:

```bash
kubectl get nodes -o wide
```

Before deploying the application we're going to need to create a `secret` to store the sensitive data from DockerHub:

```bash
kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v1/ --docker-username=tadeuuuuu --docker-password=mypassword --docker-email=tbernacchi@gmail.com
```

Deploying the application:

```bash
kubectl create -f .
```

After the app it's running you can `port-forward` to check the UI of the app on your Browser like this:

```bash
kubectl port-forward svc/my-application-svc 3000:80
```
