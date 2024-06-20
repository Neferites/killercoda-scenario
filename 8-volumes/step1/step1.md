## 1/ Créer un secret pour votre base de données
Executer la commande suivante:
```
kubectl create secret generic mysql --from-literal=password=$(openssl rand -hex 12)
```{{exec}}

## Exercice
Le but est de trouver le mot de passe généré
1. Afficher le secret au format YAML
```
kubectl get secret mysql -o yaml
```{{exec}}

2. Dans ce yaml, repérer le chemin de l'élément qui contient le mot de passe et l'extraire avec le paramètre `jsonpath` de kubectl
```
kubectl get secret mysql -o jsonpath='{.mon.chemin.ici}'
```

3. Attention, la valeur est encodée en base64, il faut donc la décoder:
```
echo 'mon_MoT_de_PaSsE_enCOde==' | base64 -d
```

Ecrire la valeur de ce mot de passe dans le fichier `/tmp/res-step1`

> vous pouvez utiliser la commande `echo '..mot_de_passe_trouvé..' > /tmp/res-step1`


