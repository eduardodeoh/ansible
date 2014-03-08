#Source: https://gist.githubusercontent.com/elbuo8/7714478/raw/b047721b49f39967a47368cc905007b56e4631f7/doapi.sh
#Export your CLIENT_ID and API_KEY
#export DO_CLIENT_ID=xxxxx
#export DO_API_KEY=xxxx
#This script help you to collect information to use digital_ocean module with ansible
endpoints=(sizes regions images ssh_keys)
for i in "${endpoints[@]}"; do
  url=`printf "https://api.digitalocean.com/%s/?client_id=%s&api_key=%s" $i $DO_CLIENT_ID $DO_API_KEY`
  curl $url | python -mjson.tool
done
