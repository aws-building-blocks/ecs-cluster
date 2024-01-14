# ECS Cluster
resource "aws_ecs_cluster" "cluster" {
  name = var.name

  setting {
    name  = var.setting.name
    value = var.setting.value
  }
}
