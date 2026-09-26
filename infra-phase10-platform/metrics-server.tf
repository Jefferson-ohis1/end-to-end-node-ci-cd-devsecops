resource "helm_release" "metrics_server" {
  name             = "metrics-server"
  repository       = "https://kubernetes-sigs.github.io/metrics-server/"
  chart            = "metrics-server"
  version          = var.metrics_server_chart_version
  namespace        = "kube-system"
  create_namespace = false

  wait          = true
  wait_for_jobs = true
  timeout       = 600

  values = [
    yamlencode({
      replicas = 2

      apiService = {
        create = true
      }

      podDisruptionBudget = {
        enabled = true
      }
    })
  ]

  depends_on = [
    data.aws_eks_cluster.node_cluster,
    data.aws_eks_cluster_auth.node_cluster
  ]
}
