terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.37.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.17.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "kubernetes" {
  config_path = var.DARIGAN_LOCAL_KUBECONFIG
}

provider "helm" {
  kubernetes {
    config_path = var.DARIGAN_LOCAL_KUBECONFIG
  }
}