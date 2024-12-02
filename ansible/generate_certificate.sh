#!/bin/bash
WORKDIR=./configs/certificates/redirector
mkdir -p ${WORKDIR}
openssl req -x509 -nodes -newkey rsa:4096 -keyout ${WORKDIR}/localhost.key -out ${WORKDIR}/localhost.crt -sha256 -days 365 -subj '/CN=localhost'
openssl pkcs12 -inkey ${WORKDIR}/localhost.key -in ${WORKDIR}/localhost.crt -export -out ${WORKDIR}/localhost.pfx -passout pass:
