read -p "Enter username: " $user
read -p "Enter server: " $server

cat ~/.ssh/id_rsa.pub | ssh $user@$server "cat >> ~/.ssh/authorized_keys"
