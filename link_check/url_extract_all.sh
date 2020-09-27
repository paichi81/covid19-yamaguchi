for file in $(find $1)
do
	if [ -f $file ]; then
		bash ./url_extract.sh $file
	fi
done|sort|uniq
