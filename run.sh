V1_REGISTRY=
V2_REGISTRY=

for i in  library/a library/b library/c library/d  library/e  library/f  library/g  library/h  library/i  library/j \
 library/k library/l library/m library/n  library/o  library/p  library/q  library/r  library/s  library/t library/u \
 library/v library/w library/x library/y library/z \
  a b c d e f g h i j k l[abcdefghjklmnopqrstuvwxyz] m n o p q r s t u v w x y z 
do 
docker run -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e V1_REGISTRY=$V1_REGISTRY \
  -e V2_REGISTRY=$V2_REGISTRY \
  -e NO_LOGIN=true \
  -e ERROR_ACTION=skip \
  -e V1_REPO_FILTER=^$i \
  --rm \
  migrator
done
