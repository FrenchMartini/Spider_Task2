#!/bin/bash 


#!/bin/bash

# Set path and array variables
Compose="./docker-compose.yml"
Services=("product-service" "user-service" "order-service")

# Pull the latest images
for SERVICE in "${Services[@]}"; do
  docker-compose -f $compose pull $Service
done

# Restart the services
docker-compose -f $Compose up --build ${Services[@]}

# Logs deployment
echo "Deployment completed at $(date)" >> ./deployment.log