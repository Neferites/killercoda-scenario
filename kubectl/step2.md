## 4/ Créer une ressource de type namespace
Nous allons créer un namespace, et ensuite nous placer dedans
```
kubectl create ns sfeir-school

## Vérifier la présence du namespace
kubectl get ns

## Se déplacer dans le namespace
kubectl config set-context --current --namespace=sfeir-school
```

Et comment puis je savoir dans quel namespace je me trouve ?