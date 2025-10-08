---
sidebar_position: 200
---

- AWS manages encryption keys.
- Integrated with IAM and most AWS services.
- Available through API calls.

## Keys Types

- Symmetric
  - Single encryption key that is used to Encrypt and Decrypt.
  - Must call KMS API to use.
- Asymmetric
  - Public (Encrypt) and Private (Decrypt) Key pair.

## Types of Keys

- AWS Owned Keys
- AWS Managed Keys
- Customer Managed Keys (created in AWS)
- Customer Managed Keys (imported)

## Copying Snapshots across regions

![](../assets/Pasted%20image%2020251005164828.png)

## KMS Key Policies

- Default KMS Key Policy: Everyone in account can access.
- Custom KMS Key Policy

## KMS Multi-Region Keys

- Same KMS keys in different regions; can be used interchangably.
- Encrypt in one region and decrypt in different region.
- NOT global (Primary + Replicas)
- Each key is managed independently.

![](../assets/Pasted%20image%2020251006070432.png)

## S3 Replication Encryption

- Unencrypted and Encrypted objects with SSE-S3 and SSE-C (customer provided key) can be replicated.
- For objects encrypted with SSE-KMS, you need to enable the option.
- Can use multi-region KMS Keys, but they are treated as independent keys.

## AMI Sharing Process Encrypted via KMS

- AMI in source account is encrypted with KMS key from Source Account.
- Must share the KMS keys to encrypt the snapshot.
- The target account must have necessary permissions.
