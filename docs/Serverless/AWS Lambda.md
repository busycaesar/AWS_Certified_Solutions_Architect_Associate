---
sidebar_position: 44
---

- Virtual serverless functions
- Short executions
- On-demand
- Automated scaling
- Pay per request and compute time.
- Easy monitoring through CloudWatch

## Cold Starts and Provisioned Concurrency

- New code is loaded, the code outside the handler run.
- It the initial is large, it takes time.
- First request served has higher latency.
- Concurrency is allocated before function is invoked.
- So the cold start never happens and all the invocations have low latency.

## SnapStart

- Lambda initializes the function.
- Takes a snapshot of the memory and disk state.
- Snapshot is cached for low-latency.

![](../assets/Pasted%20image%2020251002183459.png)

## Customization at the Edge

- Execute some form of logic at the edge.
- CloudFront provides two types: CloudFront Functions and Lambda@Edge.

## Lambda in VPC

- By default, the Lambda functions is launched outsite VPC.
- You must define the VPC ID, the subnets and the security groups.
- Lambdda will create an Elastic Network Interface in your subnets.

### Lambda with RDS Proxy

- Improve scalability.
- Improve security by enforcing IAM authentication.

![](../assets/Pasted%20image%2020251002184544.png)

## Invoking Lambda from RDS & Aurora

- Allows to process data events from within a database.
- Support for RDS for PostgreSQL and Aurora MySQL.
- Must allow required permissions.

![](../assets/Pasted%20image%2020251003062652.png)
