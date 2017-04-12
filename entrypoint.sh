#!/bin/sh

/etc/init.d/apache2 start
/etc/init.d/shellinabox start
#echo "CG> open -p 4200 /"
"$@"
