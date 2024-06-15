# Readiness / Liveness des pods

Liveness: détecter quand redémarrer un conteneur. Par exemple, les Liveness probes vérifient en permanence le port 80 du conteneur et le redémarre si celui-ci venait à ne pas répondre.

Readiness: savoir quand un conteneur est prêt à accepter le trafic. Un Pod est considéré comme prêt lorsque tous ses conteneurs sont prêts.