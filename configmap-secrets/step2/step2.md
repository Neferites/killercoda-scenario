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
Combien y a t-il d’éléments dans le Secret tls-cert ? <br>
Quel est le nom de ces éléments ?

## Bonus
Il est possible d'afficher le contenu d'un secret à l'aide de base64 decode, les secrets n'étant pas chiffrés
```
kubectl get secret tls-certs -o jsonpath="{.data}" | jq -r 'to_entries[] | "\(.key): \(.value | @base64d)"'
```