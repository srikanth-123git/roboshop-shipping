source /data/secrets

if [ -z "$CART_ENDPOINT" -o -z "$DB_HOST" -o -z "${license_key}" ]; then
  echo Environment Variables is mising
  exit 1
fi


java -javaagent:newrelic/newrelic.jar -Dnewrelic.config.license_key=${license_key} -Dnewrelic.config.app_name=shipping -jar /app/shipping.jar
