---
sidebar_position: 2
---

- Private IP can only allow certain values:
  - 10.0.0.0 — 10.255.255.255 (10.0.0.0/8) <- in big networks
  - 172.16.0.0 — 172.31.255.255 (172.16.0.0/12) <- AWS default VPC in that range
  - 192.168.0.0 — 192.168.255.255 (192.168.0.0/16) <- e.g., home networks
- All the rest of the IP addresses are Public.
