read -p 'Chose configuration file: ' cert_conf
read -p 'Chose keyout file name: ' cert_key
read -p 'Chose csr file name: ' cert_csr
read -p 'Chose cert file name: ' cert_out

openssl req -new -config $cert_conf -keyout $cert_key -out $cert_csr

openssl x509 -req -in $cert_csr -signkey $cert_key -out $cert_out -days 366 -sha256 -extfile $cert_conf -extensions req_ext