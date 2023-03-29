###############################################
## KopiCloud AD API - List DNS CNAME Records ##
###############################################

# List All DNS CNAME Records
data "kopicloud_dns_cname_records_list" "test_cname_all" { }

# Returns All DNS CNAME Records
output "OUTPUT_dns_cname_records_list_all" {
  description = "List ALL existing DNS CNAME records"
  value       = data.kopicloud_dns_cname_records_list.test_cname_all
}

