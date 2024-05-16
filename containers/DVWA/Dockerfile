# Dockerfile pour DVWA (Damn Vulnerable Web Application)

FROM vulnerables/web-dvwa

# docker run -d -p 80:80 dvwa
# navigateur : http://localhost:80
# user: admin
# password: password

# Prépare le flag pour l'injection SQL
# Modifier la base de données pour mettre la clé dans la table users de la database dvwa, colonne password où first_name = admin
# Commande à émuler : "mysql" ; "USE dvwa;" ; "UPDATE users SET password='_toovulnerable!!_' WHERE first_name='admin';"
# RUN service mysql start \
#     && mysql -e "USE dvwa; UPDATE users SET password='_toovulnerable!!_' WHERE first_name='admin';" \
#     && service mysql stop


