---
sidebar_position: 13
---

- Proprietary technology from AWS
- PostgreSQL and MySQL are supported as Aurora DB.
- Storage automatically grows in increments of 10 GB, upto 128 GB.
- Can have upto 15 replicas.
- 6 copies of data across 3 AZ.
- One Aurora instance takes writes (Master)

## Aurora DB Cluster

![aurora-db-cluster](./assets/Pasted%20image%2020250916062320.png)

## Custom Endpoints

![](../assets/Pasted%20image%2020250916063317.png)

## Aurora Serverless

- Auto-scaling based on actual usage.
- No capacity planning.
- Pay per second

## Global Aurora

- 1 primary (read/write) region, upto 10 secondary (read only) regions.
- 16 read replicas per secondary region.
- Cross-region replication takes less than 1 second.

## Aurora Machine Learning

![aurora machine learning](./assets/Pasted%20image%2020250916064000.png)

## Babelfist for Aurora PostgreSQL

![babelfish](./assets/Pasted%20image%2020250916064222.png)

## Aurora Backups

### Automated Backups

- 1 to 35 days (cannot be disabled)

### Manual DB Snapshots

- Manually triggered.
- Retention as long as you want.

## Aurora Database Cloning

- Create new cluster from existing one.
- Uses copy-on-write protocol
  - Initial new DB uses the same data volume.
  - When updates are made to new cluster, additional storage is allocated and data is copied for be separated.
- Useful to create staging DB from prod DB.
