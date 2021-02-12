output "OutputDNS" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.lb.dns_name
}

output "repositoryURL" {
  description = "The DNS name of the load balancer."
  value       = aws_ecr_repository.repo.repository_url
}