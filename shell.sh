# aws dynamodb query \
#     --table-name zooData \
#     --key-condition-expression "partitionKey = :key" \
#     --expression-attribute-names '{"#id": "exhibitID"}' \
#     --filter-expression "#id = :exhibit" \
#     --expression-attribute-values  '{":key":{"S":"events"}, ":exhibit":{"S":"X001"}}'


aws dynamodb query \
    --table-name zooData \
    --key-condition-expression "partitionKey = :key" \
    --expression-attribute-values  '{":key":{"S":"events"}}'