## 1/ Nettoyer l'environnement

Effacer tous les objets crées.

```
kubectl delete service wordpress
kubectl delete deployment wordpress
kubectl delete pvc wordpress
kubectl delete service mysql
kubectl delete deployment mysql
kubectl delete pvc mysql
```{{exec}}
