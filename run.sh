for i in a b c d e f g h i j k m n o p q r s t u v w x y z
do 
docker run -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e V1_REGISTRY= \
  -e V2_REGISTRY= \
  -e NO_LOGIN=true \
  -e ERROR_ACTION=skip \
  -e V1_REPO_FILTER=^$i \
  --rm \
  migrator
done
