resource "aws_ecs_cluster" "app_cluster" {
  name = "simple-time-service-cluster"
}

resource "aws_ecs_task_definition" "app_task" {
  family                   = "simple-time-service-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_task_role.arn
  container_definitions = jsonencode([
    {
      name  = "simple-time-service"
      image = "your-dockerhub-username/simple-time-service:latest"
      portMappings = [
        {
          containerPort = 5000
          hostPort      = 5000
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "app_service" {
  name            = "simple-time-service"
  cluster        = aws_ecs_cluster.app_cluster.id
  task_definition = aws_ecs_task_definition.app_task.arn
  launch_type     = "FARGATE"
  desired_count   = 1

  network_configuration {
    subnets         = aws_subnet.private_subnets[*].id
    security_groups = [aws_security_group.ecs_sg.id]
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.ecs_tg.arn
    container_name   = "simple-time-service"
    container_port   = 5000
  }
}
