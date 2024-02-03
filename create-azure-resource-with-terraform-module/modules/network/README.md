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
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.nic-association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefix"></a> [address\_prefix](#input\_address\_prefix) | The address prefix for subnet. | `list(string)` | n/a | yes |
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | The address space for azure vitrual network. | `list(string)` | n/a | yes |
| <a name="input_base_name"></a> [base\_name](#input\_base\_name) | The system base name for azure network resources. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location for azure resources. | `string` | `"japaneast"` | no |
| <a name="input_resouce_group_name"></a> [resouce\_group\_name](#input\_resouce\_group\_name) | The name of resource group for azure resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The tag name for azure resources. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_interface"></a> [network\_interface](#output\_network\_interface) | n/a |
<!-- END_TF_DOCS -->