resource "aws_lb" "app_alb" {
  name               = "app-load-balancer"
  internal           = false
  load_balancer_type = "application"
  subnets           = aws_subnet.public_subnets[*].id
}

resource "aws_lb_target_group" "ecs_tg" {
  name        = "ecs-target-group"
  port        = 5000
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "ip"
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_tg.arn
  }
}
