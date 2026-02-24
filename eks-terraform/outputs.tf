output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_region" {
  value = var.aws_region  # CHANGED
}

output "cluster_oidc_issuer_url" {
  value = module.eks.cluster_oidc_issuer_url  # CHANGED: useful for IRSA
}