for filename in input/* ; do
	t=`basename $filename`
	name="${t%.*}"
	lynx --dump $filename > output/$name.md
done
