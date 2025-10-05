---
sidebar_position: 7
---
- Network Access Control List
- Like firewall which control traffic from and to subnets.
- 1 NACL / Subnet.
- Rules have a number, higher precedence with a lower number.
- Last rule is (\*) which denies a request, if no rules match.
- New NACLs denies everything; while, default NACL accepts everything.

![](../assets/Pasted%20image%2020251005090226.png)
## With Ephemeral Ports

![](../assets/Pasted%20image%2020251005091417.png)