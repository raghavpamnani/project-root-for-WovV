resource "aws_ecs_task_definition" "wordpress" {
  family                   = "wordpress"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  task_role_arn            = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([
    {
      name = "wordpress"
      image = "your-docker-repo/wordpress:latest"
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort = 80
        }
      ]
      environment = [
        {
          name = "WORDPRESS_DB_HOST"
          value = aws_db_instance.wordpress.endpoint
        },
        {
          name = "WORDPRESS_DB_NAME"
          value = var.db_name
        },
        {
          name = "WORDPRESS_DB_USER"
          value = var.db_username
        },
        {
          name = "WORDPRESS_DB_PASSWORD"
          value = var.db_password
        },
        {
          name = "AWS_BUCKET_NAME"
          value = var.s3_bucket_name
        }
      ]
    }
  ])
}
