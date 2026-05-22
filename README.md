# alertmanager-rules
Prometheus alerting rules for Cloudera, Linux, Kubernetes, and security events.

## Structure
```
rules/
  ├── cloudera.yml    — Cloudera service alerts
  ├── linux.yml       — Linux host alerts
  ├── kubernetes.yml  — Kubernetes alerts
  └── security.yml    — Security event alerts
```

## Usage
```bash
# Validate rules
promtool check rules rules/*.yml
# Copy to Prometheus
cp rules/*.yml /etc/prometheus/rules/
curl -X POST http://localhost:9090/-/reload
```
