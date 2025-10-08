---
sidebar_position: 600
---

## AWS WAF - Web Application Firewall

- Protects the web applications from common web exploits.
- Works on Layer 7
- Define Web ACL Rules:
  - Protects from SQL injection and Cross-site scripting.
  - Geo-match (block countries)
  - Rate-based rules for DDoS protection.
- Rule group is reusable.

### Fixed IP with Load Balancer

![](../assets/Pasted%20image%2020251007061605.png)

## AWS Shield

- Protects from DDoS (Distributed Denial of Service; many requests at the same time) attacks.
  - AWS Shield Standard: Free service activated by default.
  - AWS Shield Advanced

## AWS Firewall Manager

- Manage rules for all accounts in AWS Organization.
- Rules are applied to new resources as they are created.

## AWS WAF vs AWS Firewall Manager vs AWS Shield

- Used together for comprehensive protection.
- Define Web ACL rules in WAF.
- To use AWS WAF across accounts, use Firewall Manager with AWS WAF.
- If you are prone to DDoS, consider using Shield Advanced.
