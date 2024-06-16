> Un fichier secure-monolith.yaml est présent à la racine du scénario.
<br>

## 1/ Decortiquer le fichier `secure-monolith.yaml`
Dans un premier temps, avant de déployer le pod secure-monolith, nous allons essayé de comprendre son contenu.
```
# Afficher le contenu du fichier.
cat secure-monolith.yaml
```

## Questions ?
Comment le secret est injecté dans le pod ? <br>
Comment le configmap est injecté dans le pod ?

## 2/ Déployer le pod
```
# Utiliser kubectl pour créer le pod secure-monolith
kubectl apply -f secure-monolith.yaml
```

## 3/ Exposer le pod en local
```
# Exposer le port en local avec la commande port-forward
kubectl port-forward secure-monolith 10443:443 &
```

## 4/ Test l'accès via curl
```
# Faites une requête avec curl
curl https://127.0.0.1:10443

# Essayer la même chose en fournissant la CA.
curl --cacert configuration/tls/ca.pem https://127.0.0.1:10443
```