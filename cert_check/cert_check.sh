
domain=yamaguchi.stopcovid19.jp
dates=$(openssl s_client -connect $domain:443 </dev/null 2>/dev/null|openssl x509 -noout -dates ) 

notBefore=$(echo $dates|sed -e "s/notBefore=\([^=]*\)notAfter=\(.*\)/\1/")
notAfter=$(echo $dates|sed -e "s/notBefore=\([^=]*\)notAfter=\(.*\)/\2/")

nb=$(date --date="$notBefore" +%s)
n=$(date +%s)
na=$(date --date="$notAfter" +%s)

if [ $n -lt $nb -o $na -lt $n ]; then
	echo "Expired certification detected!!"
	exit 1;
else
	echo "Certification is not expired."
	exit 0;
fi

