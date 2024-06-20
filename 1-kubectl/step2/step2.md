## 4/ Créer une ressource de type namespace
Nous allons créer un namespace, et ensuite nous placer dedans
```
kubectl create ns sfeir-school
```{{exec}}

Vérifier la présence du namespace
```
kubectl get ns
```{{exec}}

Se déplacer dans le namespace
```
kubectl config set-context --current --namespace=sfeir-school
```{{exec}}

### Question ?
Quelle commande permet de savoir dans quel namespace je me trouve ?  
Ecrire dans le fichier `/tmp/res-step2` le nom du context.  
> vous pouvez utiliser la commande `echo '<commande pour trouver le namespace>' > /tmp/res-step2`