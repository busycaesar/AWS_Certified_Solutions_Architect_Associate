---
sidebar_position: 20
---
- Content Delivery Network
- Content is cached at various edge locations.
## Origins (backend it can be connected with)
- S3 Bucket
- VPC Origin
	- Load balancers / EC2 Instances
- Custom Origin
	- Static S3 website
	- Public HTTP backend
## VPC Origins

![](./assets/Pasted%20image%2020250925070852.png)
## Geo Restriction
- Allowlist
- Blocklist
## Pricing
- Cost of data out per edge location varies.
### Price Classes
- Price Class All: all regions
- Price Class 200: most regions, excludes the most expensive regions
- Price Class 100: only least expensive regions.
## Cache Invalidation
- Can enforce an entire or partial cache refresh by performing CloudFront Invalidation.
- Can invalidate all files or a special path.