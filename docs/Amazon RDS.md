---
sidebar_position: 12
---

- Relational Database Service
- Database in cloud managed by AWS
  - Postgres
  - MySQL
  - MariaDB
  - Oracle
  - MS SQL Server
  - IBM DB2
  - Aurora (AWS Proprietary)
- Managed service: automate backups, dashboards, disaster recovery, scaling capability.
- Cannot SSH into instances

## Storage Auto Scaling

- Increase storage dynamically
- Set Maximum Storage Threshold

## Read Replicas

- Upto 15 replicas
- Within AZ, Cross AZ or Cross Region
- It costs if the replica is in another region.
- Replicas is Async, eventually consistent
- Application must update connection string to leverage read replicas.

### Use Cases

- Read replica for running analytics to that the main database is unaffected.

### Disaster Recovery (Multi AZ)

- No manual intervention
- Not for scaling
- Read replicas can be setup as Multi AZ for disaster recovery.

![disaster-recovery](./assets/Pasted%20image%2020250915064825.png)

## Single AZ to Multi AZ

![singleaz-multiaz](./assets/Pasted%20image%2020250915065009.png)

## RDS Custom

- Oracle and MS SQL Server with OS and DB customization.

## RDS Backup

### Automated Backup

- Daily backup; Transaction logs are backed up every 5 mins.
- 1 to 35 days of retention; can be disabled.

### Manual DB Snapshots

- Manual trigger
- Retention as long as you want.
- **Trick**: Stopped RDS costs more for storage. If you plan to stop for long time, you should snapshot and restore it.

## Amazon RDS Proxy

- Allows apps to pool or share DB connections.
- Improve DB efficiency by reducing stress on database resources and minimize open connections.
- Reduce RDS and Aurora failover time by 66%.
- Enforce IAM authentication for DB and securely store credentials in AWS Secrets Manager.
- Proxy is not accessible publically, only from VPC.
