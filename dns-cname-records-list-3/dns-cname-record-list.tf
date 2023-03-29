###############################################
## KopiCloud AD API - List DNS CNAME Records ##
###############################################

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

# Filter DNS CNAME Records with an Alias
data "kopicloud_dns_cname_records_list" "test_cname_alias" {
  depends_on = [ kopicloud_dns_cname_record.test_cname ]
  
  hostname_alias = "labtest${random_string.random.result}_alias"
}

# Returns all DNS CNAME Records that matches the Alias
output "OUTPUT_dns_cname_records_list" {
  description = "List existing DNS CNAME Records with the Alias"
  value       = data.kopicloud_dns_cname_records_list.test_cname_alias
}

