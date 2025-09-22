resource "kubernetes_namespace_v1" "servarr" {
  metadata {
    name = "servarr"
  }
}

module "storage-class" {
  source = "../../../modules/storage/storage_class"
  model = var.storage-class
}

module "sonarr-config-pvc" {
  source = "../../../modules/storage/persistent_volume_claim"
  model = var.sonarr-config-pvc

  depends_on = [module.storage-class]
}

module "prowlarr-config-pvc" {
  source = "../../../modules/storage/persistent_volume_claim"
  model = var.prowlarr-config-pvc

  depends_on = [module.storage-class]
}

module "transmission-config-pvc" {
  source = "../../../modules/storage/persistent_volume_claim"
  model = var.transmission-config-pvc

  depends_on = [module.storage-class]
}

module "jellyfin-config-pvc" {
  source = "../../../modules/storage/persistent_volume_claim"
  model = var.jellyfin-config-pvc

  depends_on = [module.storage-class]
}