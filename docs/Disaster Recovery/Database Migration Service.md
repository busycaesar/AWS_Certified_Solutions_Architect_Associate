---
sidebar_position: 200
---

- Migrate databases to AWS, resilient, self healing.
- Must create EC2 instance to perform replication tasks.

## AWS Schema Conversion Tool (SCT)

- Convert database schema from one engine to another.

## Continuous Replication

![](../assets/Pasted%20image%2020251007082646.png)

## Multi-AZ Deployment

- When enabled, DMS provisions and maintains synchronously stand replica in a different AZ.

## RDS & Aurora MySQL Migrations

- Use DMS if both databases are up and running.

### RDS MySQL to Aurora MySQL

- DB snapshots
- Read Replica

### External MySQL to Aurora MySQL

- Percona XtraBackup
- `mysqldump` utility

## RDS & Aurora PostgreSQL Migrations

- Use DMS if both databases are up and running.

### RDS PostgreSQL to Aurora PostgreSQL

- DB Snapshots
- Read Replica

### External PostgreSQL to Aurora PostgreSQL

- Using S3
