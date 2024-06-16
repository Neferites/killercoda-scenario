> Des certificats sont présents dans le répertoire : configuration/tls.
<br>

## 1/ Créer un secret à partir des fichiers
```
# Utiliser kubectl pour créer le secret à partir des fichiers
kubectl create secret generic tls-certs --from-file=configuration/tls/
```

## 2/ Explorer le secret
```
# Utiliser kubectl pour décrire le secret
kubectl describe secrets tls-certs
```

## Questions ?
Combien y a t-il d’éléments dans le Secret tls-cert ?
Quel est le nom de ces éléments ?