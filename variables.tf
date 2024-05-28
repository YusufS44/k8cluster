variable project {
    default = "gcp-class-417400"
    description = "The project ID in which the resources will be deployed"
}

variable credentials {
    default = "gcp-class-417400-9aae2903fb6d.json"
}

variable region {
  default = "us-central1"
  description = "The region in which the resources will be deployed"
}

variable zone {
  default = "us-central1-a"
  description = "The zone in which the resources will be deployed"
}

variable machine_type {
  default = "e2-medium"
  description = "The machine type of the GKE nodes"
}

variable cluster_name {
  default = "my-gke-87-cluster"
  description = "The name of the GKE cluster"
}

variable "networks" {
    default = {
        "dev_network" = {
            address_space = ["10.1.0.0/24"]
            subnets = {
                "subnet_01" = {
                    address_prefix = ["10.1.0.0/24"]
                    eable_netflow_logs = true
                }
            }
        }
    }
    description = "(mandatory) The network configuration"
}

variable service_account_name {
    default = "terraform-gcp-real@gcp-class-417400.iam.gserviceaccount.com"
    description = "The name of the service account"
}

variable service_account_id {
    default = "terraform-gcp-real"
    description = "The ID of the service account"
}

variable node_pool_name {
  default = "node-87-pool"
  description = "The name of the node pool"
}