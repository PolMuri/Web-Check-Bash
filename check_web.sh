#!/bin/bash

# La URL a comprovar i el fitxer on guardarem el resultat de si ens hi hem pogut connectar o no
URL="http://yourweb.com"
LOGFILE="/home/user/check_web.log"

# Comprovar accessibilitat de la URL: -q: Fa que wget treballi en mode silenciós (sense mostrar informació per pantalla). 
# --spider: Fa que wget només comprovi si la pàgina existeix sense descarregar el seu contingut.
wget -q --spider "$URL"
# $ Té el codi de sortida de wget, si és 0 vol dir que wget ha aconseguit accedir a la web
if [[ $? -eq 0 ]]; then
    echo "$(date) - SUCCESS: Accessible $URL" >> "$LOGFILE"
else
    echo "$(date) - ERROR: No accessible $URL" >> "$LOGFILE"
fi
