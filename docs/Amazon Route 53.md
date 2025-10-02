---
sidebar_position: 17
---

## How DNS Works?

![](../assets/Pasted%20image%2020250920065054.png)

## Route 53

- Domain Registrar
- 100% availability SLA

## Records

- Each record contains
  - Domain/Subdomain Name
  - Record Type: A/AAAA
  - Value: \[IP\]
  - Routing Policy
  - TTL

### Record Types

- A: maps hostname to IPv4
- AAAA: maps hostname to IPv6
- CNAME: maps hostname to another hostname
- NS: Name Servers

### Hosted Zones

- Container for records on how to route traffic to a domain/subdomain.
- **Public Hosted Zones**: route traffic on internet
- **Private Hosted Zones**: route traffic within one or more VPC.

### Records TTL (Time to Live)

- High TTL: Less traffic on Route 53; outdated record.
- Low TTL: More traffic on Route 53; easy to change records

### CNAME vs Alias

- CNAME: Points a hostname to another hostname; Only for non root domain.
- Alias: Points a hostname to an AWS Resource; Cannot set Alias for EC2 DNS name.

## Health Checks

- HTTP health checks are only for public resources.
- For Private Hosted Zones, you can create a CloudWatch Metric and associate a CloudWatch Alarm, then create a health check that checks the alarm itself.

## Routing Policies

### Simple

- Route traffic to a single resource.
- If multiple values are returned, a random one is chosen.

![](../assets/Pasted%20image%2020250920075537.png)

### Weighted

- Control the percentage of requests that go to each specific resource.
- If all the records have the weight of 0, then all the records will be returned equally.

### Latency-based

- Redirect to the resource that has the least latency close to the user.

![](../assets/Pasted%20image%2020250920080449.png)

### Failover

![](../assets/Pasted%20image%2020250920082004.png)

### Geolocation

- Based on user's location by continent, country, or by US State.

### Geoproximity

- Route traffic to your resources based on the geographic location of users and resources.
- Ability to shift more traffic to resources based on the defined bias.

![](../assets/Pasted%20image%2020250920083159.png)

### IP-based Routing

![](../assets/Pasted%20image%2020250920083405.png)

### Multi-Value

- Route 53 return multiple values/resources.
- Can be associated with health checks (return only values for healthy resources)

## Hybrid DNS

- By default Route 53 resolver answers DNS queries
- Hybrid DNS: resolving DNS queries between VPC and your networks.

![](../assets/Pasted%20image%2020250920084423.png)
