## 1/ Déployer le service d'authentification (svc et deployment)
Pour qu'un déploiement soit accessible hors de son namespace, il faut l'exposer via un service.  
Il faut donc créer un service et le lier à un déploiement.

Création du déploiement et du service pour `auth`
```
kubectl apply -f deployments/auth.yaml -f deployments/service-auth.yaml
```{{exec}}

Création du déploiement et du service pour `hello`
```
kubectl apply -f deployments/hello.yaml -f deployments/service-hello.yaml
```{{exec}}

Création du déploiement et du service pour `frontend`
```
kubectl apply -f deployments/frontend.yaml -f deployments/service-frontend.yaml
```{{exec}}

# Question ?
Le pod du frontend est dans un statut un peu spécial.  
Ecrire dans le fichier `/tmp/res-step1` le nom de cet état.

> vous pouvez utiliser la commande `echo '<statut>' > /tmp/res-step1`