
for url in $(cat /dev/stdin)
do
	status=$(bash status_code.sh $url)
	if [ "$status" == "" ]; then
		echo $url
	else
		if [ "$status" -eq 404 ]; then
			echo $url
		fi
	fi
done
