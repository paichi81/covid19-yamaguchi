function url_extract(){
	grep -oP $1 -e "http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"
}

function url_extract_all(){
	for file in $(find $1)
	do
		if ! file --mime $file |grep -e "binary" 1>/dev/null;then
			if [ -f $file ]; then
				url_extract $file
			fi
		fi
	done|sort|uniq
}

function status_code(){
	curl --head $1 2>/dev/null| head -n 1 |sed -r "s/.* ([0-9]*) .*/\1/"
}

function link_check(){
	status=$(status_code $1)
	if [ "$status" == "" ]; then
		echo "broken link"
		return 1;
	else
		if [ "$status" -eq 404 ]; then
			echo "broken link"
			return 1;
		fi
	fi
	echo "normal link"
	return 0;
}

function link_check_all(){
	for url in $(cat /dev/stdin)
	do
		if ! link_check $url 1>/dev/null;then
			echo $url
		fi
	done
}

function broken_link_test(){
	DOMAIN_NAME=$1
	wget -r -np --random-wait -x https://$DOMAIN_NAME --directory-prefix=downloaded_pages 1>/dev/null 2>/dev/null
	url_extract_all ./downloaded_pages/$DOMAIN_NAME | link_check_all
	rm -rf downloaded_pages
}

function main(){
	broken_link_test yamaguchi.stopcovid19.jp
}
