# Les déploiements

Un déploiement Kubernetes est une abstraction qui gère un ensemble de répliques d'une application conteneurisée. Il définit l'état souhaité pour ces applications et Kubernetes s'assure que cet état est maintenu. 

1. Définition de l'état souhaité : Le déploiement décrit le nombre de réplicas d'une application, l'image du conteneur à utiliser, et les stratégies de mise à jour et de déploiement.
2. Gestion des réplicas : Kubernetes maintient le nombre souhaité de réplicas en créant ou supprimant des pods en fonction de l'état actuel du système.
3. Mises à jour et rollbacks : Les déploiements permettent des mises à jour progressives des applications, garantissant une disponibilité continue. En cas de problème, ils peuvent être annulés (rollback) à une version précédente.
4. Auto-scaling : Les déploiements peuvent s'adapter automatiquement à la charge en ajustant le nombre de réplicas en fonction de l'utilisation des ressources.