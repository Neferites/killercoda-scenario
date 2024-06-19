## 1/ Créer les volumes
Appliquer ces 2 commandes

```
kubectl apply -f volume/mysql-volumeclaim.yaml
kubectl apply -f volume/wordpress-volumeclaim.yaml
```{{exec}}

## 2/ Créer ma base de données MySQL
Les descripteurs permettant de déployer une base de données sont founis dans le TP. Les examiner et les appliquer:

```
cat volume/mysql.yaml
```{{exec}}

```
kubectl apply -f volume/mysql.yaml
```{{exec}}

```
cat volume/mysql-service.yaml
```{{exec}}

```
kubectl apply -f volume/mysql-service.yaml
```{{exec}}


## 3/ Créer l'instance Wordpress  et l'exposer
Les descripteurs sont founis dans le TP. Les examiner et les appliquer:

```
cat volume/wordpress.yaml
```{{exec}}

```
kubectl apply -f volume/wordpress.yaml
```{{exec}}

```
cat volume/wordpress-service.yaml
```{{exec}}

```
kubectl apply -f volume/wordpress-service.yaml
```{{exec}}


## 4/ Accédez à votre wordpress

```
curl http://$(kubectl get service wordpress -o jsonpath="{.status.loadBalancer.ingress[0].ip}")
```{{exec}}

### Challenge

Accédez à l'application depuis votre navigateur
- Trouver l'IP
- Se connecter en http


