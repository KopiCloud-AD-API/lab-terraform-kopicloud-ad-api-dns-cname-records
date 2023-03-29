@echo off
cls
echo Clean up Logs
del /q dns*.txt

echo -----------------------------

echo DNS CNAME List #1
del /q "dns-cname-records-list-1\.terraform.lock.hcl"
del /q "dns-cname-records-list-1\terraform.tfstate"
rmdir /s /q "dns-cname-records-list-1\.terraform"

echo DNS CNAME List #2
del /q "dns-cname-records-list-2\.terraform.lock.hcl"
del /q "dns-cname-records-list-2\terraform.tfstate"
rmdir /s /q "dns-cname-records-list-2\.terraform"

echo DNS CNAME List #3
del /q "dns-cname-records-list-3\.terraform.lock.hcl"
del /q "dns-cname-records-list-3\terraform.tfstate"
del /q "dns-cname-records-list-3\terraform.tfstate.backup"
rmdir /s /q "dns-cname-records-list-3\.terraform"

echo DNS CNAME List #4
del /q "dns-cname-records-list-4\.terraform.lock.hcl"
del /q "dns-cname-records-list-4\terraform.tfstate"
del /q "dns-cname-records-list-4\terraform.tfstate.backup"
rmdir /s /q "dns-cname-records-list-4\.terraform"

echo DNS CNAME Create
del /q "dns-cname-records-create\.terraform.lock.hcl"
del /q "dns-cname-records-create\terraform.tfstate"
del /q "dns-cname-records-create\terraform.tfstate.backup"
rmdir /s /q "dns-cname-records-create\.terraform"

echo -----------------------------

pause