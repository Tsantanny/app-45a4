sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /app-45a4-aeb3a88f/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"