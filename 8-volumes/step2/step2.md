## 1/ Créer les volumes
Créer les volumes pour mysql et wordpress
```
kubectl apply -f volume/mysql-volumeclaim.yaml -f volume/wordpress-volumeclaim.yaml
```{{exec}}

## 2/ Créer la base de données MySQL
Les YAML permettant de déployer une base de données sont founis dans le TP.  
Vous pouvez les examiner avec `cat`

```
cat volume/mysql.yaml
cat volume/mysql-service.yaml
```{{exec}}

Les déployer: 
```
kubectl apply -f volume/mysql-service.yaml -f volume/mysql.yaml
```{{exec}}


## 3/ Créer l'instance Wordpress  et l'exposer
Les YAML sont founis dans le TP. 
Vous pouvez les examiner avec `cat`

```
cat volume/wordpress.yaml
cat volume/wordpress-service.yaml
```{{exec}}

Les déployer: 
```
kubectl apply -f volume/wordpress.yaml -f volume/wordpress-service.yaml
```{{exec}}


## 4/ Vérifier l'état des pods
Lancer la commande et attendre que les 2 pods soient en état "Running" (faire Ctrl + C quand tout est bon)
```
watch kubectl get pods
```{{exec}}


## 5/ Accédez à votre wordpress
Afficher via la commande `curl` la page d'installation de wordpress
```
curl -L http://172.30.1.2:30000
```{{exec interrupt}}

> Si vous constatez une erreur liée à la connexion avec la base de données, patienter 10 secondes et retentez la commande.

### Challenge
Accédez à l'application depuis votre navigateur

1. En haut à droite de la fenêtre terminal, cliquer sur la petite icône représentant 3 barres (menu "hamburger")
2. Dans le menu qui s'ouvre, choisir "Traffic / Ports"
3. Dans la zone de saisie "Custom Ports" pour un des 2 hosts, entrer "30000"
4. Cliquer sur "Access"

> Il est possible que vous obteniez une page d'erreur "502". Dans ce cas recharger la page.