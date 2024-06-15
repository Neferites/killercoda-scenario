> Un fichier monilith.yaml est présent à la racine du scénario.
<br>

## 1/ Explorer le fichier `monilith.yaml`
```
# Affichier le contenu du fichier
cat monolith.yaml

# Quelle image est lancée dans le pod ?
```

## 2/ Créer le pod
```
# Utiliser kubectl pour créer le pod à partir du fichier
k apply -f monolith.yaml
```