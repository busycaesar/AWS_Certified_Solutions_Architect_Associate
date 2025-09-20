---
sidebar_position: 18
---

- Managed service to deploy application on AWS.
- Automatically handles capacity provisioning, load balancing, scaling, health monitoring, etc.

## Components

- Application: Collection of Beanstalk components.
- Application Version: Iteration of your application code.
- Environment:
  - Collection of AWS resources running an application version.
  - Tiers: Web Server Env Tier & Worker Env Tier.
  - Can create multiple environments

### Web Server Env Tier & Worker Env Tier.

![](./assets/Pasted%20image%2020250920114222.png)
