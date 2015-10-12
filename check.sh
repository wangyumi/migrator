repos=`curl 10.97.232.19/v1/search?q= 2>/dev/null | jq -r '.results | .[] | .name'| sed -e "s/^library\///g" `

for repo in $repos
do 
	curl 10.101.74.64:5000/v2/$repo/tags/list 2>/dev/null |  grep '"tags":null' | cut -d ',' -f 1|cut -d ':' -f 2 |sed -e 's/"//g' 
done
