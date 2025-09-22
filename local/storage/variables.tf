variable "DARIGAN_LOCAL_KUBECONFIG" {
  type = string
  sensitive = true
}

variable "storage-class" {
  type = object({
    name = string
    provisioner = string
    volume_binding_mode = string
    reclaim_policy = string
    hostpath = string
  })
}

variable "sonarr-config-pvc" {
  type = object({
    name = string
    namespace = string
    storage_class = string
    access_modes = list(string)
    storage = string
    wait_until_bound = bool
  })
}

variable "prowlarr-config-pvc" {
  type = object({
    name = string
    namespace = string
    storage_class = string
    access_modes = list(string)
    storage = string
    wait_until_bound = bool
  })
}

variable "jellyfin-config-pvc" {
  type = object({
    name = string
    namespace = string
    storage_class = string
    access_modes = list(string)
    storage = string
    wait_until_bound = bool
  })
}

variable "transmission-config-pvc" {
  type = object({
    name = string
    namespace = string
    storage_class = string
    access_modes = list(string)
    storage = string
    wait_until_bound = bool
  })
}