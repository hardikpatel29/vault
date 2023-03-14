# vault

### CLI Commands

export VAULT_ADDR='http://127.0.0.1:8200'
vault status
vault auth list
vault login
vault auth enable userpass
vault auth list
vault auth enable -path=mypath userpass
vault auth list
vault auth disable userpass
vault auth list
vault auth disable mypath
vault auth list
vault auth enable -path=hardik -description="login details" userpass
vault auth tune -default-lease-ttl=24h hardik/
vault write auth/hardik/users/patel password=demo policies=hardik
vault list auth/hardik/users
vault read auth/hardik/users/patel
vault auth enable approle
vault write auth/approle/role/hardik token_ttl=20m policies=hardik
vault read auth/approle/role/hardik
vault auth enable aws
