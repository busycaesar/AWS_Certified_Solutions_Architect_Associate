---
sidebar_position: 21
---
- Leverage AWS internal network to route your application.
- 2 Anycast IPs are created for your application.
- Anycast IP sends the traffic directly to the Edge Locations.
- The Edge locations sends the traffic to your application.

- Works with Elastic IP, EC2 Instances, ALB, NLB, etc.
- Consistent Performance
- Health Checks
- Security
## Unicast IP vs Anycast IP
- Unicast IP: One server holds one IP.
- Anycast IP: All servers holds the same IP; client is routed to the nearest one.