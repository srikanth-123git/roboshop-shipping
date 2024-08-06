source /data/secrets

if [ -z "$CART_ENDPOINT" -o -z "$DB_HOST" -o -z "${license_key}" ]; then
  echo Environment Variables is mising
  exit 1
fi


java -XX:MaxRAMPercentage=90 -jar /app/shipping.jar

