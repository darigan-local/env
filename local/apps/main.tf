module "tailscale" {
  source = "git::https://github.com/darigan-local/modules.git//apps/tailscale"
  model = var.tailscale
  oauthClientId = var.TAILSCALE_OAUTH_CLIENT_ID
  oauthClientSecret = var.TAILSCALE_OAUTH_CLIENT_SECRET
}

module "jellyfin" {
  source = "git::https://github.com/darigan-local/modules.git//apps/servarr"
  model = var.jellyfin

  depends_on = [module.tailscale]
}

module "prowlarr" {
  source = "git::https://github.com/darigan-local/modules.git//apps/servarr"
  model = var.prowlarr

  depends_on = [module.tailscale]
}

module "sonarr" {
  source = "git::https://github.com/darigan-local/modules.git//apps/servarr"
  model = var.sonarr

  depends_on = [module.tailscale]
}

module "transmission" {
  source = "git::https://github.com/darigan-local/modules.git//apps/servarr"
  model = var.transmission

  depends_on = [module.tailscale]
}