# public-ip

This module outputs your source IP address that services will see that your internet traffic originates from.

## Example

```hcl
module "public_ip" {
  source  = "Mattias-/public-ip/external"
  version = "~> 0.1.0"
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
* bash
* dig
