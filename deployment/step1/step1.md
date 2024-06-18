## 1/ Déployer le service d'authentification (svc et deployment)
Pour qu'un déploiement soit accessible hors de son namespace, il faut l'exposer via un service.  
Il faut donc déployer le service et le déploiement.
```
# Création du déploiement
kubectl apply -f deployments/auth.yaml
# Création du service
kubectl apply -f deployments/service-auth.yaml
```{{exec}}

## 2/ Déployer le microservice hello
Tout comme le service d'authentification, hello vient avec son service.
```
# Création du service
kubectl apply -f deployments/hello.yaml
# Création du déploiement
kubectl apply -f deployments/service-hello.yaml
```{{exec}}

## 3/ Frontend
On déploie maintenant le frontend
```
# Création du service
kubectl apply -f deployments/frontend.yaml
# Création du déploiement
kubectl apply -f deployments/service-frontend.yaml
```{{exec}}

# Question ?
Le pod du frontend est dans un status un peu spécial.  
Ecrire dans le fichier /tmp/res-step1 le nom de cet état.

> vous pouvez utiliser la commande `echo '<status>' > /tmp/res-step1`