resource "google_compute_managed_ssl_certificate" "default" {
  name = "${var.service_name}-cert"
  managed {
    domains = [var.domain_name]
  }
}

resource "google_compute_backend_service" "default" {
  name                  = "${var.service_name}-backend"
  load_balancing_scheme = "EXTERNAL"
  protocol              = "HTTP"

  backend {
    group = google_cloud_run_service.default.id
  }
}

resource "google_compute_url_map" "default" {
  name            = "${var.service_name}-url-map"
  default_service = google_compute_backend_service.default.self_link
}

resource "google_compute_target_http_proxy" "default" {
  name    = "${var.service_name}-http-proxy"
  url_map = google_compute_url_map.default.self_link
}

resource "google_compute_target_https_proxy" "default" {
  name                 = "${var.service_name}-https-proxy"
  url_map              = google_compute_url_map.default.self_link
  ssl_certificates     = [google_compute_managed_ssl_certificate.default.id]
}

resource "google_compute_global_forwarding_rule" "http" {
  name                  = "${var.service_name}-http-rule"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "80"
  target                = google_compute_target_http_proxy.default.self_link
}

resource "google_compute_global_forwarding_rule" "https" {
  name                  = "${var.service_name}-https-rule"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "443"
  target                = google_compute_target_https_proxy.default.self_link
}

output "frontend_ip" {
  description = "The IP address of the load balancer"
  value       = google_compute_global_forwarding_rule.https.ip_address
}
