---
sidebar_position: 5
---
- Use Bastion Host to SSH into private EC2 instances.
- Bastion is in public subnet which is then connected to all private subnets.
- Bastion host security group must allow inbound on port 22 from restricted CIDR.
- Security group of the EC2 must allow the security group of the Bastion Host or the private IP of the Bastion host.

![](../assets/Pasted%20image%2020251005080634.png)