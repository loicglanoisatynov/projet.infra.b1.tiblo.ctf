# Dockerfile pour DVWA (Damn Vulnerable Web Application)

# ' UNION SELECT user, password FROM users#

FROM vulnerables/web-dvwa

EXPOSE 80

# Prépare le flag pour l'injection SQL
# Modifier la base de données pour mettre la clé dans la table users de la database dvwa, colonne password où first_name = admin
# Commande à émuler : "mysql" ; "USE dvwa;" ; "UPDATE users SET password='_toovulnerable!!_' WHERE first_name='admin';"
RUN service mysql start \
    && mysql -e "USE dvwa; UPDATE users SET password='_toovulnerable!!_' WHERE first_name='admin';" \
    && service mysql stop


