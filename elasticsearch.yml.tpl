cluster:
  name: ${cluster_name}
  initial_master_nodes: [${nodes}]

network.host: _site_,_lo_

path:
  data: /var/lib/elasticsearch
  logs: /var/log/elasticsearch

bootstrap:
  memory_lock: true

http:
  cors:
    enabled: true
    allow-origin: "*"

cloud.gce.project_id: ${project}
cloud.gce.zone: ${zone}
discovery:
  zen:
    hosts_provider: gce
  seed_providers: gce

# config generated by Terraform provision
