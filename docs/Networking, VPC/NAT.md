---
sidebar_position: 6
---

- Network Address Translation

## NAT Instances

- Allows EC2 instances in private subnet to connect to the internet.
- Must be launched in public subnet.
- Must disable Source / Destination check.
- Must have Elastic IP attached.
- Route tables must be configured.

![](../assets/Pasted%20image%2020251005082446.png)

## NAT Gateway

- AWS managed NAT.
- Create in a specific AZ and uses Elastic IP.
- Can only based used by EC2 instances from another subnet.
- Requires Internet Gateway.
- No security groups to manage.
