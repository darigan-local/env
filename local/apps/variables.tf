variable "DARIGAN_LOCAL_KUBECONFIG" {
  type = string
  sensitive = true
}

variable "TAILSCALE_OAUTH_CLIENT_ID" {
  type = string
  sensitive = true
}

variable "TAILSCALE_OAUTH_CLIENT_SECRET" {
  type = string
  sensitive = true
}

variable "jellyfin" {
  type = object({
    name = string
    image = string
    namespace = string
    replicas = number
    service_type = string
    tailscale = string
    ports = list(object({
      name = string
      protocol = string
      internal = number
      external = number
      node = number
    })),
    persistent_volumes = list(object({
      name = string
      mount_path = string
      claim_name = string
    }))
    volumes = list(object({
      name = string
      mount_path = string
      host_path = string
    })),
    env = list(object({
      name = string,
      value = string,
    }))
  })
}

variable "prowlarr" {
  type = object({
    name = string
    image = string
    namespace = string
    replicas = number
    service_type = string
    tailscale = string
    ports = list(object({
      name = string
      protocol = string
      internal = number
      external = number
      node = number
    })),
    persistent_volumes = list(object({
      name = string
      mount_path = string
      claim_name = string
    }))
    volumes = list(object({
      name = string
      mount_path = string
      host_path = string
    })),
    env = list(object({
      name = string,
      value = string,
    }))
  })
}

variable "sonarr" {
  type = object({
    name = string
    image = string
    namespace = string
    replicas = number
    service_type = string
    tailscale = string
    ports = list(object({
      name = string
      protocol = string
      internal = number
      external = number
      node = number
    })),
    persistent_volumes = list(object({
      name = string
      mount_path = string
      claim_name = string
    }))
    volumes = list(object({
      name = string
      mount_path = string
      host_path = string
    })),
    env = list(object({
      name = string,
      value = string,
    }))
  })
}

variable "transmission" {
  type = object({
    name = string
    image = string
    namespace = string
    replicas = number
    service_type = string
    tailscale = string
    ports = list(object({
      name = string
      protocol = string
      internal = number
      external = number
      node = number
    })),
    persistent_volumes = list(object({
      name = string
      mount_path = string
      claim_name = string
    }))
    volumes = list(object({
      name = string
      mount_path = string
      host_path = string
    })),
    env = list(object({
      name = string,
      value = string,
    }))
  })
}

variable tailscale {
  type = object({
    name = string
    chart = string
    repository = string
    namespace = string
    create_namespace = bool
  })
}