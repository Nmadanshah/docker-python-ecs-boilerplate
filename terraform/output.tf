output "load_balancer_dns" {
  description = "Public URL of the Load Balancer"
  value       = aws_lb.flask_alb.dns_name
}
