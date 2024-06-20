> Un fichier healthy-monolith.yaml est présent à la racine du scénario.
<br>

## 1/ Explorer le fichier `healthy-monolith.yaml`
Afficher le contenu du fichier
```
cat healthy-monolith.yaml
```{{exec}}

## 2/ Créer le pod
Utiliser kubectl pour créer le pod à partir du fichier
```
k apply -f healthy-monolith.yaml
```{{exec}}