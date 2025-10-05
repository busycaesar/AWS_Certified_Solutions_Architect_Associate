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
