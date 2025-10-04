---
sidebar_position: 45
---

- NoSQL Database
- Fast and consistent performance
- Integrated with IAM.
- Standard and Infrequent Access (IA) Table Class
- Made up of Tables with Primary Keys and infinite number of rows.
- Attributes can be added over time or can be null for each row.
- **You can rapidly evolve schemas**.

## Read/Write Capacity Modes

- Provisioned Mode: Specify number of reads/writes per second, pay for Read Capacity Units and Write Capacity Units.
- On-Demand Mode: Automatic scaling, Great for unpredictable workloads with steep sudden spikes.

## DynamoDB Accelerator (DAX)

- In-memory cache for DynamoDB.
- Microseconds latency for cached data.
- 5 minutes TTL for cache.

### DAX vs ElastiCache

![](../assets/Pasted%20image%2020251003064415.png)

## Stream Processing

- Ordered stream of item level modifications in a table.
  - DynamoDB Streams
  - Kinesis Data Streams

### DynamoDB Streams

![](../assets/Pasted%20image%2020251003064907.png)

## DynamoDB Global Tables

- Make tables accessible with low latency in multiple regions.
- Applications can READ and WRITE to the table in any region.
- Must enable DynamoDB Streams

## Time to Live

- Automatically delete items after an expiry timestamp.

## Backups

- Continuous backups
- On-demand backups

## Integration with S3

### Export to

- Must enable Point in Time Recovery.
- Retain snapshots for auditing.
- Export in DynamoDB JSON or ION format.

### Import from

- Import CSV, DynamoDB JSON or ION format.
