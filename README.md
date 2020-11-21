# public-ip

This module outputs your source IP address that services will see that your internet traffic originates from.

## Example

```hcl
module "public_ip" {
  source = "git::https://github.com/Mattias-/terraform-external-public-ip.git?ref=0.1.1"
}

output "public_ip" {
  value = module.public_ip.ip
}

resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress"
  protocol          = "tcp"
  security_group_id = "sg-012345678"
  from_port         = "22"
  to_port           = "22"
  cidr_blocks       = ["${module.public_ip.ip}/32"]
}
```

## Requirements
The module will call the following external binaries so make sure to install them and that they're in $PATH.

* bash
* dig
