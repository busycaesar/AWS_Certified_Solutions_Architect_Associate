---
sidebar_position: 11
---

- Scale out to match an increased load.
- Scale in to match a decreased load.
- Ensure to have a minimum and maximum number of instances running.
- Automatically, add the new instance to the load balancer.
- Recreate EC2 instance if the previous one is unhealthy.
- ASG are free (only pay for the instances).

## Attributes

- Launch Template (Instance config information like AMI, EBS, etc.)
- Min Size, Max Size, Initial Capacity
- Scaling Policies

## ASG X CloudWatch

- Alarm monitors the metric (Average CPU or custom metric)
- Based on the alarm:
  - Create scale-out policies (increase instance)
  - Create scale-in policies (decrease instance)

## Scaling Policies

### Dynamic Scaling

- Target Tracking Scaling
- Simple / Step Scaling: via CloudWatch

### Scheduled Scaling

- Anticipate based on known patterns.

### Predictive Scaling

- Continuously forecast load and schedule scaling ahead.

### Good Metrics to scale on

- CPU Utilization
- Request count / target
- Agent Network in / out
- Any other custom metric

### Scaling Cooldowns

- After scaling happens, there is a cooldown period of 300 seconds by default.
- ASG does not lauch / terminal any instances in this period.
