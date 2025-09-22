module "tailscale" {
  source = "../../../modules/apps/tailscale"
  model = var.tailscale
  oauthClientId = var.TAILSCALE_OAUTH_CLIENT_ID
  oauthClientSecret = var.TAILSCALE_OAUTH_CLIENT_SECRET
}

module "jellyfin" {
  source = "../../../modules/apps/servarr"
  model = var.jellyfin

  depends_on = [module.tailscale]
}

module "prowlarr" {
  source = "../../../modules/apps/servarr"
  model = var.prowlarr

  depends_on = [module.tailscale]
}

module "sonarr" {
  source = "../../../modules/apps/servarr"
  model = var.sonarr

  depends_on = [module.tailscale]
}

module "transmission" {
  source = "../../../modules/apps/servarr"
  model = var.transmission

  depends_on = [module.tailscale]
}