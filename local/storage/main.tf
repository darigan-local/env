resource "kubernetes_namespace_v1" "servarr" {
  metadata {
    name = "servarr"
  }
}

module "storage-class" {
  source = "git::https://github.com/darigan-local/modules.git//storage/storage_class"
  model = var.storage-class
}

module "sonarr-config-pvc" {
  source = "git::https://github.com/darigan-local/modules.git//storage/persistent_volume_claim"
  model = var.sonarr-config-pvc

  depends_on = [module.storage-class]
}

module "prowlarr-config-pvc" {
  source = "git::https://github.com/darigan-local/modules.git//storage/persistent_volume_claim"
  model = var.prowlarr-config-pvc

  depends_on = [module.storage-class]
}

module "transmission-config-pvc" {
  source = "git::https://github.com/darigan-local/modules.git//storage/persistent_volume_claim"
  model = var.transmission-config-pvc

  depends_on = [module.storage-class]
}

module "jellyfin-config-pvc" {
  source = "git::https://github.com/darigan-local/modules.git//storage/persistent_volume_claim"
  model = var.jellyfin-config-pvc

  depends_on = [module.storage-class]
}