---
sidebar_position: 300
---

## Instantiating Application Quickly

### EC2 Instances

- Use a Golden AMI
- Bootstrap using User Data
- Hybrid

### RDS Databases and EBS Volumes

- Snapshots

## To Do Mobile Application (Serverless)

![](./assets/Pasted%20image%2020251003084615.png)

## MyBlogs.com (Serverless)

### Welcome Email Flow

![](./assets/Pasted%20image%2020251003085327.png)

### Thumbnail Generation

![](./assets/Pasted%20image%2020251003085229.png)

## Microserices Environment

![](./assets/Pasted%20image%2020251004060515.png)

## Software Updates Distribution

- Since the updates files are not dynamic, CloudFront will cache content at the edge.

![](./assets/Pasted%20image%2020251004060835.png)

## Best Practices for DDoS Resiliency

### Edge Location Mitigation

- BP1: Global Accelerator / CloudFront
- BP3: Route 53

![](./assets/Pasted%20image%2020251007064457.png)

## DDoS Mitigation

- Infrastructure layer defence (BP1, BP3, BP6)
- Amazon EC2 with Auto Scaling (BP7)
- Elastic Load Balancing (BP6)
