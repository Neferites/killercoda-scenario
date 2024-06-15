## 3/ Information sur le Pod
Avec l'aide de kubectl, nous allons retrouver des informations sur le pod précédement créé.

### Quelle est l'ip du pod ?
```
kubectl get pod -o wide
```

### Sur quel node s'exectute le pod ?
```
kubectl get pod -o wide
```

### Quelle est l'image qui est lancé à l'intérieur du pod ?
```
kubectl describe pod monolith
```

### Dans quel namespace est le pod ?
```
kubectl get pod -A 
```

