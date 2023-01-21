CATEGORY_NAME=$1
for file in /silo100/hdd/sr939/Top600GPlay/$CATEGORY_NAME/*.apk; do
	filename="${file%.*}"
	sfilename=$(basename -- "$file")
	sfilename="${sfilename%.*}"
	#echo ${file}
	if [ -d "$filename" ]; then
		echo "$filename already done"
	else
		echo "to do $filename"
		./droidel.sh -app ${file} -android_jar stubs/out/droidel_android-4.4.2_r1.jar > ${file}.txt
		rm $sfilename-error.zip
	fi
done
