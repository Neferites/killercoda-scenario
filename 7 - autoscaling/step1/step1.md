## 0/ Attendre que le noeud soit Ready

Executer la commande suivante:
```
kubectl get nodes
```{{exec}}

attendre que la statut soit "Ready". Si besoin relancer la commande en attendant quelque secondes.

## 1/ Créer le déploiement
Lance le service de test sur le cluster

```
# Création du déploiement
kubectl apply -f deployments/hpa-example.yaml
```{{exec}}

## 2/ Exposer le déploiement
Créer un service en utilisant la méthode impérative.
```
# Création du service
kubectl expose deployment/hpa-example --port 80
```{{exec}}

## 3/ Créer le HorizontalPodAutoscaler sur le déploiement
La commande suivante permet de mettre automatiquement le déploiement à l'échelle, en fonction de la charge CPU
```
# Mise à l'echelle automatique
kubectl autoscale deployment hpa-example --cpu-percent=50 --min=1 --max=2
```{{exec}}

# Question ?
- Quels est le nombre maximal de pods pour le déploiement _hpa-example_ ?

- Lister les objets de type _hpa_ (horizontalPodAutoscaler) à l'aide d'une commande **kubectl** et placer le résultat dans le fichier /tmp/res-step1

> vous pouvez utiliser la commande `kubectl .... > /tmp/res-step1`
