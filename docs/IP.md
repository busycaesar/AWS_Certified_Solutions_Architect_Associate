---
sidebar_position: 5
---

## Private vs Public IP (IPv4)

- Network has two IPs: IPv4 and IPv6
- IPv4 is common and IPv5 is newer and solves problems of IoT.
- IPv$ allows 3.7 billion different addresses.
- Public IP: must be unique, can be geo-located easily.
- Private IP: unique across private network, connect to www via internet gateway, specified range of IPs can be used.
- Elastic IP: Fixed public IP for instance, you can have max 5 Elastic IPs in your account (can ask AWS to increase it).
- Avoid using Elastic IP:
  - use random public IP and register a DNS name.
  - use Load Balancer and don't use public IP.
- EC2 instances comes with a private IP for internal AWS network and public IP for www.
- If the machine stops and then started, the public IP can change.
