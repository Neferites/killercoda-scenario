> Un fichier proxy.conf est présent dans le répertoire : configuration/nginx.
<br>

## 1/ Explorer le fichier `proxy.conf`
Afficher le contenu du fichier
```
cat configuration/nginx/proxy.conf
```{{exec}}

## 2/ Créer une configmap à partir du fichier
Utiliser kubectl pour créer la configmap à partir du fichier
```
kubectl create configmap nginx-proxy-conf --from-file=configuration/nginx/proxy.conf
```{{exec}}

## Questions ?
Combien y a t-il d’élément(s) dans la configmap nginx-proxy-conf ?  
Quel est le nom de ces éléments ?  
Ecrire dans le fichier `/tmp/res-step1` le nombre d'élements ainsi que leurs noms.  
> vous pouvez utiliser la commande `echo '<nombre elements>' >> /tmp/res-step1` puis `echo '<nom element>' >> /tmp/res-step1` autant de fois que nécessaire.