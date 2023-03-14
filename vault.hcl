storage "raft" {
  path    = "/opt/vault/data"
}
listener "tcp" {
 address = "0.0.0.0:8200"
 cluster_address = "0.0.0.0:8201"
 tls_disable = 1
}
seal "awskms" {
  region = "ap-south-1"
  kms_key_id = "arn:aws:kms:ap-south-1:xxxx:key/xxxxxx"
}
api_addr = "https://myvault:8200"
cluster_addr = "https://myvault-cluster:8201"
cluster_name = "vault-prod-ap-south-1"
ui = true
log_level = "INFO"
