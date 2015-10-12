V1_REPO=
v2_REPO=

repos=`curl $V1_REPO/v1/search?q= 2>/dev/null | jq -r '.results | .[] | .name'| sed -e "s/^library\///g" `

for repo in $repos
do 
	curl $V2_REPO/v2/$repo/tags/list 2>/dev/null |  grep '"tags":null' | cut -d ',' -f 1|cut -d ':' -f 2 |sed -e 's/"//g' 
done
