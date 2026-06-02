rgs1 = {
  r_rg1 = {
    name     = "n1_rg"
    location = "centralindia"
  }
  r_rg2 = {
    name     = "n2_rg"
    location = "eastus"
  }
}

stg = {
  s_sta = {
    name                     = "sstag09"
    location                 = "centralindia"
    resource_group_name      = "r_rg1"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
  S_sta1 = {
    name                     = "sstag01"
    location                 = "centralindia"
    resource_group_name      = "r_rg2"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}