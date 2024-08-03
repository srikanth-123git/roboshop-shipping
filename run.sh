source /data/secrets

if [ -z "$CART_ENDPOINT" -o -z "$DB_HOST" ]; then
  echo Environment Variables is mising
  exit 1
fi

java -javaagent:newrelic/newrelic.jar -jar /app/shipping.jar