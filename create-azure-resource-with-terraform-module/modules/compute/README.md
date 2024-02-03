<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_machine.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_name"></a> [base\_name](#input\_base\_name) | The system base name for azure network resources. | `string` | n/a | yes |
| <a name="input_image_offer"></a> [image\_offer](#input\_image\_offer) | The image offer for azure vm. | `string` | n/a | yes |
| <a name="input_image_publisher"></a> [image\_publisher](#input\_image\_publisher) | The image name for azure vm. | `string` | n/a | yes |
| <a name="input_image_sku"></a> [image\_sku](#input\_image\_sku) | The image sku for azure vm. | `string` | n/a | yes |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | The image version for azure vm. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location for azure resources. | `string` | `"japaneast"` | no |
| <a name="input_network_interface_id"></a> [network\_interface\_id](#input\_network\_interface\_id) | The network interface id for azure vm | `string` | n/a | yes |
| <a name="input_os_disk_cache"></a> [os\_disk\_cache](#input\_os\_disk\_cache) | The OS disk cache for azure vm disk. | `string` | n/a | yes |
| <a name="input_os_disk_create_option"></a> [os\_disk\_create\_option](#input\_os\_disk\_create\_option) | The OS disk create option for azure vm disk. | `string` | n/a | yes |
| <a name="input_os_managed_disk_type"></a> [os\_managed\_disk\_type](#input\_os\_managed\_disk\_type) | The OS managed disk type for azure vm disk. | `string` | n/a | yes |
| <a name="input_resouce_group_name"></a> [resouce\_group\_name](#input\_resouce\_group\_name) | The name of resource group for azure resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The tag name for azure resources. | `map(any)` | `{}` | no |
| <a name="input_vm_admin_password"></a> [vm\_admin\_password](#input\_vm\_admin\_password) | The admin user password for azure vm. | `string` | n/a | yes |
| <a name="input_vm_admin_username"></a> [vm\_admin\_username](#input\_vm\_admin\_username) | The admin username for azure vm. | `string` | n/a | yes |
| <a name="input_vm_computer_name"></a> [vm\_computer\_name](#input\_vm\_computer\_name) | The computer name for azure vm. | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | The vm size for azure vm. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->