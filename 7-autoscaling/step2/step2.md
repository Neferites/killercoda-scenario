## 1/ Charger le système
Lancez ensuite un Pod interactif pour charger le service
```
kubectl run -ti load-generator --image=busybox /bin/sh
```{{exec}}

## 2/ Executer la boucle
Une fois dans le shell, lancer la boucle d'appel suivante:
```
while true;
do wget -q -O- http://hpa-example;
done
```{{exec}}