# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v1.0.1] - 2026-09-13

### Added
- Cloud Armor security policy integration via `security_policy` input variable
- Serverless Network Endpoint Group (Cloud Run, Cloud Functions) support via `is_serverless` boolean flag
- Optional health check configuration (`health_check = null`) for serverless backends

## [v1.0.0] - 2025-11-24

### Added
- Initial release of Global Load Balancer Backend Service module
- Support for creating Google Compute Backend Service with multiple backends
- Health check configuration with support for TCP, HTTP, and HTTPS protocols
- Flexible backend configuration supporting both Instance Groups and Network Endpoint Groups (NEGs)
- Connection draining timeout configuration
- Session affinity options (NONE, CLIENT_IP)
- Health check logging capability
- Multiple load balancing schemes support (EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, INTERNAL_SELF_MANAGED)
- Dynamic health check configuration based on protocol type
- Advanced health check settings (timeout, check interval, healthy/unhealthy thresholds)
- Support for proxy header configuration in health checks
- Capacity scaler and balancing mode configuration per backend
- Rate limiting options per endpoint (NEGs) and per instance (Instance Groups)

### Outputs
- `backend_service_id` - The ID of the backend service
- `backend_service_self_link` - The self_link of the backend service
- `backend_service_name` - The name of the backend service
- `health_check_id` - The ID of the health check
- `health_check_self_link` - The self_link of the health check

### Requirements
- Terraform >= 1.5.0
- Google Provider >= 7.0.0, < 8.0.0
- Google Beta Provider >= 7.0.0, < 8.0.0