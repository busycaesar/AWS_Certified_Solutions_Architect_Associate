---
sidebar_position: 38
---

- Elastic Container Service
- Launch docker container on AWS = Launch ECS Tasks on ECS Cluster.

## EC2 Launch Type

- Must provision and maintain the infrastructure.
- Each EC2 Instances must run the ECS Agent to register in ECS Cluster.

![](./assets/Pasted%20image%2020251002062859.png)

## Fargate Launch Type

- Serverless
- Create task definitions.
- To scale, just increase the number of tasks.

## IAM Roles for ECS

### EC2 Instance Profile

- Make API calls to ECS Service.
- Send container logs to CloudWatch.
- Pull Docker image from ECR.
- Reference sensitive data in Secrets Manager or SSM Parameter Store.

### ECS Task Role

- Each task have specific role.
- Different roles for different ECS services.
- Task role is defined in task definition.

![](./assets/Pasted%20image%2020251002064155.png)

## Load Balancer Integrations

- Application Load Balancer (Works for most cases)
- Network Load Balancer (Recommended only for high thoughput)
- Classic Load Balancer (Not recommended)

## Data Volumes

- Mount EFS file systems onto ECS tasks.
- Works for both launch types.
- Fargate + EFS = Serverless
- **Amazon S3 cannot be mounted**.

## ECS Service Auto Scaling

- Automatically increase or decrease the number of ECS tasks.
- ECS Autoscaling uses AWS Application Auto Scaling.
  - Average CPU Utilization
  - Average Memory Utilization
  - ALB request count per target

### EC2 Launch Type

- Auto Scaling Group
- ECS Cluster Capacity Provider

![](./assets/Pasted%20image%2020251002070905.png)

## Solution Architectures

![](./assets/Pasted%20image%2020251002071128.png)

![](./assets/Pasted%20image%2020251002071343.png)
