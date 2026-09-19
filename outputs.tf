output "backend_service_id" {
  description = "The ID of the backend service"
  value       = google_compute_backend_service.this.id
}

output "backend_service_self_link" {
  description = "The self_link of the backend service"
  value       = google_compute_backend_service.this.self_link
}

output "backend_service_name" {
  description = "The name of the backend service"
  value       = google_compute_backend_service.this.name
}

output "health_check_id" {
  description = "The ID of the health check"
  value = coalescelist(
    google_compute_health_check.tcp[*].id,
    google_compute_health_check.http[*].id,
    google_compute_health_check.https[*].id
  )[0]
}

output "health_check_self_link" {
  description = "The self_link of the health check"
  value = coalescelist(
    google_compute_health_check.tcp[*].self_link,
    google_compute_health_check.http[*].self_link,
    google_compute_health_check.https[*].self_link
  )[0]
}