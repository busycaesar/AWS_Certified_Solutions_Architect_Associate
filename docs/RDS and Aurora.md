---
sidebar_position: 14
---

## Backups

### Restore Options

- Restoring RDS / Aurora backup or snapshot create a new database.

#### Restoring MySQL RDS from S3

- Backup of on-prem database -> Amazon S3 -> Restore onto a new RDS instances running MySQL.

#### Restoring MySQL Aurora from S3

- Backup of on-prem database using Percona XtraBackup -> Amazon S3 -> Restore onto a new Aurora cluster running MySQL.

## Security

### At rest encryption

- Use AWS KMS, defined at launch time.
- If master is not encrypted, read replicas cannot be encrypted.
- To encrypt an unencrypted database, snapshot DB and restore as encrypted.

### In flight encryption

- Use AWS TLS root certificates on client side.

## IAM Authentication

## Security Groups

## Audit logs

- Can be sent to CloudWatch for longer retention.
