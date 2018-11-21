keytool -genkey -alias compass -keyalg RSA -keysize 2048 -sigalg MD5withRSA -validity 3653 -keystore .keystore
keytool -selfcert -alias compass -dname "CN=Changxun Cludove, OU=Cludove, O=Crest, L=Chengdu, ST=Sichuan, C=CN" -validity 3653 -keystore .keystore
keytool -export -rfc -alias compass -file compass.cert  -keystore .keystore