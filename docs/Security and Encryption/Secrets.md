---
sidebar_position: 300
---

## SSM Parameter Store

- Secure storage for configuration and secrets.
- Version tracking.
- Security through IAM.
- Optional encryption using KMS.

### Parameters Policies

- Allow to assign a TTL to a parameter.
- Can assign multiple policies at a time.

## AWS Secrets Manager

- Meant for storing secrets.
- Can force rotation of secrets every X days.
- Automate generation on rotation using Lambda.
- Integration with Amazon RDS (MySQL, PostgreSQL, Aurora)
- Secrets encrypted using KMS.
- Mostly for RDS integration.

### Multi-Region Secrets

- Replication secrets across multiple AWS regions.
