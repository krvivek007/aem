. ./config.sh ${1}
echo $name
if [ ! -d "$DIRECTORY" ]; then
  tar xvf filevault.tgz
fi
for i in "${paths[@]}"
do
  echo "$i"	
  $DIRECTORY/bin/./vlt rcp -b 100 -r -u -n http://admin:admin@$source:$port/crx/-/jcr:root$i  http://admin:admin@$destination:$port/crx/-/jcr:root$i
done
