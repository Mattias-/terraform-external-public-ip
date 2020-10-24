output "ip" {
  description = "Your public IP address."
  value       = data.external.dig_opendns_ip.result["ip"]
}
