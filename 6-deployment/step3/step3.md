## Exercices
Comment faire pour avoir plusieurs réplicas de notre déploiement hello ?  
But: si un des pods est non fonctionnel, le service a d'autres endpoints pour pouvoir délivrer l'application.  
> Il est possible de retrouver la syntaxe exacte d'une sous commande kubectl avec l'option --help. Essayer donc la commande `kubectl scale deployments --help`

En utilisant la méthode impérative (utilisation de kubectl), augmenter le nombre de réplicas du déploiement `hello` à 3.
> L'exercice est validé quand 3 pods de `hello` tournent dans le namespace
