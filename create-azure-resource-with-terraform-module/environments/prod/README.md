<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_compute"></a> [compute](#module\_compute) | ../../modules/compute | n/a |
| <a name="module_network"></a> [network](#module\_network) | ../../modules/network | n/a |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | ../../modules/resource_group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefix"></a> [address\_prefix](#input\_address\_prefix) | The address prefix for subnet. | `list(string)` | <pre>[<br>  "10.0.0.0/24"<br>]</pre> | no |
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | The address space for azure vitrual network. | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_base_name"></a> [base\_name](#input\_base\_name) | The name of azure resource group. | `string` | `"prodmoduledemo"` | no |
| <a name="input_image_offer"></a> [image\_offer](#input\_image\_offer) | The image offer for azure vm. | `string` | `"0001-com-ubuntu-server-jammy"` | no |
| <a name="input_image_publisher"></a> [image\_publisher](#input\_image\_publisher) | The image publisher for azure vm. | `string` | `"Canonical"` | no |
| <a name="input_image_sku"></a> [image\_sku](#input\_image\_sku) | The image sku for azure vm. | `string` | `"22_04-lts"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | The image version for azure vm. | `string` | `"latest"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for azure resource group. | `string` | `"japaneast"` | no |
| <a name="input_os_disk_cache"></a> [os\_disk\_cache](#input\_os\_disk\_cache) | The OS disk cache for azure vm disk. | `string` | `"ReadWrite"` | no |
| <a name="input_os_disk_create_option"></a> [os\_disk\_create\_option](#input\_os\_disk\_create\_option) | The OS disk create option for azure vm disk. | `string` | `"FromImage"` | no |
| <a name="input_os_managed_disk_type"></a> [os\_managed\_disk\_type](#input\_os\_managed\_disk\_type) | The OS managed disk type for azure vm disk. | `string` | `"Standard_LRS"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags for azure resource group. | `map(any)` | <pre>{<br>  "environment": "Production"<br>}</pre> | no |
| <a name="input_vm_admin_password"></a> [vm\_admin\_password](#input\_vm\_admin\_password) | The vm admin password for azure vm. | `string` | `"!QAZWS#ED4gh"` | no |
| <a name="input_vm_admin_username"></a> [vm\_admin\_username](#input\_vm\_admin\_username) | The vm admin username for azure vm. | `string` | `"moduledemouser"` | no |
| <a name="input_vm_computer_name"></a> [vm\_computer\_name](#input\_vm\_computer\_name) | The vm computer name for azure vm. | `string` | `"prodmoduledemo"` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | The vm size for azure vm. | `string` | `"Standard_DS1_v2"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->