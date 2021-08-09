output "lb_dns_name" {
  value = aws_lb.app.dns_name
}
output "traffic_distribution" {
  value = local.traffic_dist_map[var.traffic_distribution]
}