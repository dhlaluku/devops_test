
provider "kubernetes" {}


# declare any input variables

# create docker volume resource

# create docker network resource

# create airports pod
resource "kubernetes_pod" "airports" {
  metadata {
    name = "airports-pod"
    labels = {
      App = "airports"
    }
  }

  spec {
    container {
      image = "dhlaluku/devops:airports"
      name  = "airports"

      port {
        container_port = 8000
      }
    }
  }
}

# create countries pod
resource "kubernetes_pod" "countries" {
  metadata {
    name = "countries-pod"
    labels = {
      App = "countries"
    }
  }

  spec {
    container {
      image = "dhlaluku/devops:countries"
      name  = "countires"

      port {
        container_port = 8080
      }
    }
  }
}

# create nginx pod
resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx-pod"
    labels = {
      App = "nginx"
    }
  }

  spec {
    container {
      image = "dhlaluku/devops:mynginx"
      name  = "mynginx"

      port {
        container_port = 80
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx-service"
  }
  spec {
    selector {
      App = "${kubernetes_pod.nginx.metadata.0.labels.App}"
    }
    
    port {
      port = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}