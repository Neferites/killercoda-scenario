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


## 4/ Vérifier l'état des pods
Lancer la commande et attendre que les 2 pods soient en état "Running"

```
watch kubectl get pods
```{{exec}}


## 5/ Accédez à votre wordpress

```
curl -L http://172.30.1.2:30000
```{{exec interrupt}}

> Si vous constatez une erreur liée à la connexion avec la base de données, patienter 10 secondes et retenter la commande.

### Challenge

Accédez à l'application depuis votre navigateur

- En haut à droite de la fenêtre terminal, cliquer sur la petite icône représentant 3 barres (menu "hamburger")
- Dans le menu qui s'ouvre, choisir "Traffic / Ports"
- Dans la zone de saisie "Custom Ports" pour un des 2 hosts, entrer "30000"
- Cliquer sur "Access"

> Il est possible que vous obteniez une page d'erreur "502". Dans ce cas recharger la page.

- Vous obtenez la page d'installation de Wordpress, vous pouvez suivre la procédure si vous le souhaitez.
  Ces erreurs sont liées à des limitations dans les environnements de test Killerkoda
