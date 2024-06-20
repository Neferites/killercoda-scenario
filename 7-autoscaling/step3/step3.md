
> Laissez la boucle tourner et ouvrir un nouvel onglet (icône **+** à côté de "**Tab1**" en haut à droite de votre zone de terminal)  
  Basculer dans le nouvel onglet créé nommé "**Tab2**"

## 1/ Afficher l'état du déploiement

### Objet hpa

```
kubectl get hpa
```{{exec}}

Répéter l'opération à quelques secondes d'intervalle (jusqu'à 1 minute): Comment évolue la charge CPU moyenne ?

### Déploiement
Vérifier le nombre de replicas pour votre déploiement
```
kubectl get deployment
```{{exec}}
Que constatez-vous ?

## 2/ Analyser les resources du cluster

### Pods
Pour connaître la consommation instantanée des pods, exécuter la commande suivante:
```
kubectl top pods
```{{exec}}

### Nodes
Pour connaître la consommation instantanée des noeuds entiers, exécuter la commande suivante:
```
kubectl top nodes
```{{exec}}