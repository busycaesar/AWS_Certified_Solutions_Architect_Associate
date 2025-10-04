---
sidebar_position: 2
---

- Based on PostgreSQL.
- Columnar storage of data.
- Provisioned cluster or Serverless cluster.
- SQL interface for performing queries.
- Integration with BI tools like Amazon Quicksight or Tableau.

## Redshift Cluster

- Leader Node: Plans the query.
- Compute Node: Performs the query.
- Provisioned Mode: Choose instance types in advance; Reserve instance for cost savings.

![](../assets/Pasted%20image%2020251004074250.png)

## Snapshots and Disaster Recovery

- Snapshots are backups of a cluster, stored internally in S3.
- Can restore a snapshot into a new cluster.
- Automated and Manual.
- Can configure Amazon Redshift to automatically copy snapshots to another AWS region.

## Loading Data

![](../assets/Pasted%20image%2020251004075031.png)

## Redshift Spectrum

- Query data from S3 without loading it.
- Must have a Redshift cluster.

![](../assets/Pasted%20image%2020251004075350.png)
