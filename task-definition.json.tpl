{
  "family": "$SERVICE-%ENVIRONMENT%",
  "containerDefinitions": [
    {
      "image": "255382753382.dkr.ecr.eu-central-1.amazonaws.com/$SERVICE-service:%IMAGE_VERSION%",
      "name": "$SERVICEC-%ENVIRONMENT%",
      "cpu": 100,
      "memory": 320,
      "essential": true,
      "portMappings": [
        {
          "containerPort": 80,
          "hostPort": 0
        }
      ],
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "%ENVIRONMENT%",
          "awslogs-region": "eu-central-1",
          "awslogs-stream-prefix": "$SERVICE"
        }
      },
      "environment": [
        {
          "name": "ENVIRONMENT",
          "value": "%ENVIRONMENT%"
        },
        {
          "name": "SERVICE_VERSION",
          "value": "%IMAGE_VERSION%"
        }
      ]
    }
  ],
  "taskRoleArn": "arn:aws:iam::255382753382:role/credentials-$SERVICE-%ENVIRONMENT%"
}
