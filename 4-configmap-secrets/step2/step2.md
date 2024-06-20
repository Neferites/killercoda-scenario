> Des certificats sont présents dans le répertoire : configuration/tls.
<br>

## 1/ Créer un secret à partir des fichiers
Utiliser kubectl pour créer le secret à partir des fichiers
```
kubectl create secret generic tls-certs --from-file=configuration/tls/
```{{exec}}

## 2/ Explorer le secret
Utiliser kubectl pour décrire le secret
```
kubectl describe secrets tls-certs
```{{exec}}

## Questions ?
Combien y a t-il d’éléments dans le Secret tls-cert ?  
Quel est le nom de ces éléments ?  
Ecrire dans le fichier `/tmp/res-step2` le nombre d'élements ainsi que leurs noms.  
> vous pouvez utiliser la commande `echo '<nombre elements>' >> /tmp/res-step2` puis `echo '<nom element>' >> /tmp/res-step2` autant de fois que nécessaire.

## Bonus
Il est possible d'afficher le contenu d'un secret à l'aide de base64 decode, les secrets n'étant pas chiffrés
```
kubectl get secret tls-certs -o jsonpath="{.data}" | jq -r 'to_entries[] | "\(.key): \(.value | @base64d)"'
```{{exec}}