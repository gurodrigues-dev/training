# Pods

Criando um Pod, apontando para um container de imagem Nginx

```bash
kubectl run nginx-pod

pod/nginx-pod created
```

Verificando o status do pod
```bash
kubectl get pods

NAME        READY   STATUS              RESTARTS   AGE
nginx-pod   0/1     ContainerCreating   0          5s

```

Verificando o status do pod em tempo real
```bash
kubectl run nginx-pod --watch

NAME        READY   STATUS              RESTARTS   AGE
nginx-pod   0/1     ContainerCreating   0          5s
nginx-pod   1/1     Running   0          16s
```

Verificando descrição sobre o pod
```bash
kubectl describe pod nginx-pod

Name:             nginx-pod
Namespace:        default
Priority:         0
Service Account:  default
Node:             minikube/192.168.59.100
Start Time:       Mon, 06 Mar 2023 14:21:55 -0300
Labels:           run=nginx-pod
Annotations:      <none>
Status:           Running
IP:               10.244.0.3
IPs:
  IP:  10.244.0.3
Containers:
  nginx-pod:
    Container ID:   docker://79090ef9d2ffa207d1a221a7c10c93240772499f3e275c02f310eb7e62ab1b06
    Image:          nginx:latest
    Image ID:       docker-pullable://nginx@sha256:aa0afebbb3cfa473099a62c4b32e9b3fb73ed23f2a75a65ce1d4b4f55a5c2ef2
    Port:           <none>
    Host Port:      <none>
    State:          Running
      Started:      Mon, 06 Mar 2023 14:22:04 -0300
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-crsb8 (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  kube-api-access-crsb8:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age    From               Message
  ----    ------     ----   ----               -------
  Normal  Scheduled  4m38s  default-scheduler  Successfully assigned default/nginx-pod to minikube
  Normal  Pulling    4m37s  kubelet            Pulling image "nginx:latest"
  Normal  Pulled     4m29s  kubelet            Successfully pulled image "nginx:latest" in 8.476159331s (8.476170092s including waiting)
  Normal  Created    4m29s  kubelet            Created container nginx-pod
  Normal  Started    4m29s  kubelet            Started container nginx-pod
```

Fazendo alterações no pod
```bash
kubectl edit pod nginx-pod

pod/nginx-pod edited
```
- No caso acima, apenas alterei a versão da imagem do container Nginx de latest para 1.0
> latest -> 1.0

#### Criando primeiro Pod personalizado e configurado.

``` yaml
apiVersion: v1
kind: Pod
metadata:
  name: primeiro-pod-declarativo
spec:
  containers:
  - name: nginx-container
    image: nginx:latest
    resources:
      limits:
        memory: "128Mi"
        cpu: "500m"
```

Comando para executar a criação desse Pod

```bash
kubectl apply -f primeiro-pod.yaml
```
> Este pod está representado dentro do diretório `/pods/primeiro-pod.yaml`

```bash
$ kubectl apply -f primeiro-pod.yaml 
pod/primeiro-pod-declarativo created

$ kubectl get pods
NAME                       READY   STATUS             RESTARTS       AGE
nginx-pod                  0/1     ImagePullBackOff   0 (149m ago)   159m
primeiro-pod-declarativo   1/1     Running            0              11s

```

Fazendo a edição deste arquivo:
- Mudando a versão de latest para 1.0
> latest -> 1.0

```bash
$ kubectl apply -f primeiro-pod.yaml 
pod/primeiro-pod-declarativo configured

$ kubectl get pods --watch
NAME                       READY   STATUS             RESTARTS       AGE
nginx-pod                  0/1     ImagePullBackOff   0 (155m ago)   166m
primeiro-pod-declarativo   0/1     ErrImagePull       0 (8s ago)     6m48s
primeiro-pod-declarativo   0/1     ImagePullBackOff   0 (16s ago)    6m56s
```
> Como já vimos anteriormente nao há possibilidade de buildar este container com a versão 1.0 desta imagem

- Excluindo pods que foram criados de forma imperativa
```bash
kubectl delete pod nginx-pod

pod "nginx-pod" deleted
```

- Excluindo pods que foram criados de forma declarativa
```bash
kubectl delete -f primeiro-pod.yaml
```
> Lembrando que a flag "-f" serve para que você fale sobre um arquivo justamente == file


- Como verificar uma espécie de scan do pod

# Services

