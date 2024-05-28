output "name" {
  value = google_container_cluster.primary.name
}

output "location" {
  value = google_container_cluster.primary.location
}

output "node-name" {
    value = google_container_node_pool.primary_preemptible_nodes.name
}