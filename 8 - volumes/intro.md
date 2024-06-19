# Volumes

Les fichiers sur disque dans un conteneur sont éphémères, ce qui présente des problèmes pour des applications non-triviales lorsqu'elles s'exécutent dans des conteneurs. Premièrement, lorsqu'un conteneur plante, kubelet va le redémarrer mais les fichiers seront perdus - le conteneur démarre avec un état propre. Deuxièmement, lorsque plusieurs conteneurs s'exécutent ensemble dans un `Pod`, il est souvent nécessaire de partager des fichiers entre ces conteneurs. L'abstraction Kubernetes `Volume` résout ces deux problèmes.  

Le but de ce TP est de déployer une stack Wordpress complète avec une base de données MySQL.
