resource "tls_private_key" "rsa-4096" {

  algorithm = "RSA"
  rsa_bits  = 4096

}

output "tls_private_key" {
  value     = tls_private_key.rsa-4096.private_key_pem
  sensitive = true
}