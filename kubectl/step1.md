> Kubectl est installé de base sur l'environment killercoda.
<br>

## 1/ Vérifier la présence de kubectl et sa version
```
kubectl version

# Il existe un alias de kubectl, k. Tester la commande avec l'alias
k version
```

## 2/ Lister les namespaces
```
# Commande permettant de voir l'ensemble des namespaces sur le cluster
k get namespace
```

## 3/ Quelques mot clefs plus 'courts'
Il est possible de remplacer `namespace` par `ns` dans la commande précédente. Pour connaitre la liste des mots clefs (endpoints de l'api kubernetes):
```
kubectl api-resources
```