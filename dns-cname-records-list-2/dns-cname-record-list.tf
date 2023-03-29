###############################################
## KopiCloud AD API - List DNS CNAME Records ##
###############################################

# Filter DNS CNAME Records with the Zone Name
data "kopicloud_dns_cname_records_list" "test_cname_zone_name" {
  zone_name = var.zone_name
}

# Returns all DNS CNAME Records that matches the Zone Name
output "OUTPUT_dns_cname_records_list_zone_name" {
  description = "List existing DNS CNAME records in a Zone"
  value       = data.kopicloud_dns_cname_records_list.test_cname_zone_name
}

