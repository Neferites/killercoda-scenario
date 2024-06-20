## 1/ Stopper la charge

> Revenir dans le premier onglet "**Tab1**"

Sortir du pod `load-generator`
```
exit
```{{exec interrupt}}

## 2/ Analyser l'état du déploiement
### Objet hpa
Afficher l'état de l'objet hpa
```
kubectl get hpa
```{{exec}}

Répéter l'opération à quelques secondes d'intervalle (jusqu'à 1 minute): Comment évolue la charge CPU moyenne ?

### Charge instantanée
Examiner l'évolution de la charge des pods et des noeuds
```
kubectl top pods
```{{exec}}

```
kubectl top nodes
```{{exec}}


### Déploiement
Vérifier le nombre de replicas pour votre déploiement
```
kubectl get deployment
```{{exec}}

Que constatez-vous (le résultat peut prendre jusqu'à 10 minutes pour être visible) ?
