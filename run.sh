source /data/secrets

if [ -z "$CART_ENDPOINT" -o -z "$DB_HOST" ]; then
  echo Environment Variables is mising
  exit 1
fi

java -jar /app/shipping.jar

