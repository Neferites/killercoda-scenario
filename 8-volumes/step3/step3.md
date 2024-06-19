## 1/ Détruire des pods mysql et wordpress

```
kubectl delete pods -l="app=mysql"
```{{exec}}

```
kubectl delete pods -l="app=wordpress"
```{{exec}}

### Question ?
Que se passe-t-il ? (un peu de patience quand même ;) )
