---
sidebar_position: 15
---

- ElastiCache manage Redis or Memcached.
- Using ElastiCache involves heavy code changes.

| Redis                                           | Memcached                   |
| ----------------------------------------------- | --------------------------- |
| Multi AZ with failover                          | Multi-Node for sharding     |
| Read replicas to scale reads; high availability | No high availability        |
| Data durability                                 | Non persistent              |
| Supports sets and sorted sets                   | Multi-threaded architecture |

## Cache Security

- Supports IAM Authentication for Redis.
- IAM policies on ElastiCache are only used for AWS API-level security.
- Redis AUTH
  - Set password/token, Supports SSL in flight encryption.
- Memcached
  - Supports SASL-based authentication

## Patterns for ElastiCache

- Lazy Loading: all read data is cached which becomes stale.
- Write Through: adds/updates data when written to DB.
- Session Store: store temporary session data.
