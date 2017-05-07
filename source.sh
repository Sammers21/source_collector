if [ -z "$1" ]; then
	echo "usage [FILE_TYPE[] [DIRECTORY]
		file_type - type like java, c, cpp, go, php, js, html"

else

	if [ -z "$2" ]; then
		find . -name "*.$1" | while read line; do
		    cat $line >> source_code.txt
		done

	else 
		find $2 -name "*.$1" | while read line; do
		    cat $line >> source_code.txt
		done
	fi
fi