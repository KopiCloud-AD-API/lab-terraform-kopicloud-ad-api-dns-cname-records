#################################################
## KopiCloud AD API - Create DNS CNAME Records ##
#################################################

# Create a DNS CNAME Name
resource "random_string" "random" {
  length           = 4
  special          = false
}

# Create a DNS CNAME Record for a Computer
resource "kopicloud_dns_cname_record" "test_cname" {
  hostname       = "labtest${random_string.random.result}"
  hostname_alias = "labtest${random_string.random.result}_alias"
  zone_name      = var.zone_name
}

# Output Created DNS CNAME Record 
output "OUTPUT_dns_cname_record" {
  description = "Created DNS CNAME Record"
  value       = resource.kopicloud_dns_cname_record.test_cname
}
