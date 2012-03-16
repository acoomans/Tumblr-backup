BLOGS="blog.acoomans.com myotherblog.tumblr.com"

DESTDIR=`date +%Y%m%d`
mkdir -p $DESTDIR
cd $DESTDIR

for BLOG in $BLOGS
do
	echo "*** backuping $BLOG..."
	
	wget \
     --recursive \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --span-hosts \
     --domains "$BLOG, media.tumblr.com" \
         $BLOG
done

cd $OLDPWD
