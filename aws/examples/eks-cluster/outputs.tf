output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.this.name
}

output "region" {
  value = var.aws_region
}

output "kubeconfig" {
  sensitive = true
  value = {
    apiVersion = "v1"
    kind       = "Config"
    clusters = [{
      name = aws_eks_cluster.this.name
      cluster = {
        server                     = aws_eks_cluster.this.endpoint
        certificate-authority-data = aws_eks_cluster.this.certificate_authority[0].data
      }
    }]
    contexts = [{
      name = aws_eks_cluster.this.name
      context = {
        cluster = aws_eks_cluster.this.name
        user    = "aws"
      }
    }]
    current-context = aws_eks_cluster.this.name
    users = [{
      name = "aws"
      user = {
        exec = {
          apiVersion = "client.authentication.k8s.io/v1beta1"
          command    = "aws"
          args = [
            "eks",
            "get-token",
            "--cluster-name",
            aws_eks_cluster.this.name
          ]
        }
      }
    }]
  }
}
