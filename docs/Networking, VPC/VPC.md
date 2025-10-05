---
sidebar_position: 3
---
- Virtual Private Cloud
- Multiple VPCs in single AWS region.
- Only private IPv4 ranges are allowed.
## Default VPC
- All AWS accounts have a default VPC.
- It has internet connectivity and all EC2 instances inside have public IPv4 addresses.
## Subnet (IPv4)
- AWS reserves 5 IP addresses in each subnet.
## VPC Peering
- Privately connect two VPCs using AWS network.
- Must not have overlapping CIDRs.
- Must update route tables in each VPC's subnets to ensure EC2 instances can communicate with each other.

![](../assets/Pasted%20image%2020251005092412.png)
## VPC Endpoints
- Allows to connect to AWS services using a private network instead of using the public internet.

![](../assets/Pasted%20image%2020251005095115.png)
### Types of Endpoints
- Interface Endpoints: Provisions ENI as an entry point.

![](../assets/Pasted%20image%2020251005095948.png)

- Gateway Endpoints: Provisions a gateway and must be used as a target in route table; only supports S3 and DynamoDB.

![](../assets/Pasted%20image%2020251005100001.png)
## VPC Flow Logs
- Capture information about IP traffic going into interfaces.
- Captures network information from AWS managed interfaces too.
### Architectures

![](../assets/Pasted%20image%2020251005101156.png)
## Traffic Mirroring
- Capture and inspect network traffic.
- Route the traffic to security appliances that you manage.

![](../assets/Pasted%20image%2020251005125329.png)
## IPv6 in VPC
- IPv4 cannot be disabled for VPC and subnets.
- Can enable IPv6 to operate in dual-stack mode.