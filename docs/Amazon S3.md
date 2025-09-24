---
sidebar_position: 19
---

- Allow people to store objects (files) in buckets (directories).
- Globally unique name; defined at region level.
- Objects have a key.
- The key is full path (prefix + object name) to the object.

- Max object size is 5 TB.
- If uploading > 5 GB, must use "multi-part upload"
- Metadata
- Tags
- Version Id (if enabled)

## Security

### User-Based

- IAM Policies

### Resource-Based

- Bucket Policies
- Object Access Control List
- Bucket Access Control List

- IAM Principal can access S3 object if,
  - IAM permission allows it OR the resource policy allows it.
  - AND there is no explicit DENY.
- Encrypt objects using encryption keys.

## S3 Bucket Policies

### JSON based policies

- Resources
- Effect
- Actions
- Principal

![](./assets/Pasted%20image%2020250920122633.png)

## Versioning

- Enabled at bucket level
- If file is not versioned before enabling versioning, it will have version "null".

## Replication

- Must enabled versioning
- Cross Region Replication
- Same Region Replication
- Buckets can be in different accounts.
- Must give proper IAM permissions to S3.
- After enabling replication. only new objects are replicated.
- Existing objects can be replicated using S3 Batch Replication.
- There is no chaining of replication.

## S3 Durability and Availability

- Durability: 99.999999999% (11 9s)
- Availability: 99.99% (not available 53 minutes a year)

## S3 Storage Classes

- Amazon S3 Standard - General Purpose: For frequently accessed data
- Amazon S3 Standard - Infrequent Access: For less frequently accessed data; but requires rapid access.
- Amazon S3 One Zone - Infrequent Access: High durability in single AZ; data is lost when AZ is destroyed.
- Amazon S3 Glacier Instance Retrieval: For data accessed once a quarter; 90 days storage duration
- Amazon S3 Glacier Flexible Retrieval: 1 to 5 mins to 5 to 12 hours; 90 days storage duration
- Amazon S3 Glacier Deep Archive: 12 to 48 hours, 180 days storage duration.
- Amazon S3 Intelligent Tiering: Automatically moves object between Access Tiers based on usage.
- S3 Express One Zone: High performance, single AZ.

## Lifecycle Rules

- Transition Actions: Configure objects to transition to another storage class.
- Expiration Actions: Configure objects to delete after some time.
- Rules can be attached to a certain prefix or object tags.

## Requester Pays

![](./assets/Pasted%20image%2020250920145601.png)

## S3 Event Notifications

- Object creation, removal, restore, replication.
- Name filtering (\*.jpg)

### Amazon EventBridge

- Advanced filtering options with JSON rules.
- Multiple Destinations
- EventBridge Capabilities: Archive, Replay Events, etc.

## Baseline Performance

- Automatically scales
- 3500 PUT/COPY/POST/DELETE or 5500 GET/HEAD requests per second per prefix in a bucket.
- Prefix = `bucket/folder1/sub1/file` => `/folder1/sub1`

### Multi-Part Upload

![](./assets/Pasted%20image%2020250920150924.png)

### S3 Transfer Acceleration

![](./assets/Pasted%20image%2020250920150955.png)

### S3 Byte-Range Fetches

![](./assets/Pasted%20image%2020250920151115.png)

## S3 Batch Operation

- Perform bulk operations on existing S3 objects with a single request.
- A job consists of a list of objects, the action to perform and optional parameters.
- Manages retries, tracks progress, sends completion notifications, generate reports, etc.
- Use S3 inventory to get object list and use Athena to query and filter your objects.

![](./assets/Pasted%20image%2020250920151457.png)

## Storage Lens

![](./assets/Pasted%20image%2020250920151620.png)

### Metrics

- Summary Metrics
- Cost-Optimization Metrics
- Data-Protection Metrics
- Access-Management Metrics
- Event Metrics
- Performance Metrics
- Activity Metrics
- Detailed Statue Code Metrics

## Object Encryption

### Server-Side Encryption

#### Amazon S3-Managed Keys

- Header `"x-amz-server-side-encryption": "AWS256"`
- Enabled by default.

#### KMS Keys stored in AWS KMS.

- Header `"x-amz-server-side-encryption": "aws:kms"`.
- It calls KMS API when you upload/download the object.

#### Customer-Provided Keys

- HTTPS must be used.
- Encryption key must be provided in the HTTP headers for every request made.
- Amazon S3 does not store the keys.

### Client-Side Encryption

- Libraries: Amazon S3 Client-Side Encryption Library.

### Encryption in Transit

- Encryption in flight is called SSL/TLS.
- To force encryption in transit, setup the AWS policy.

## CORS

- You can allow for a specific origin or for all origins using \*.

## MFA Delete

- MFA will be required to:
  - Permanently delete an object version.
  - Suspend versioning on the bucket.
- Versioning must be enabled.
- Only bucket owner (root account) can be enable/disable.

## Access Logs

- Any request made to S3 bucket will be logged into another S3 bucket.
- The data can be analyzed using data analysis tools.
- The logging bucket should be in the same region.

## Pre-Signed URLs

- Users given a pre-signed URL inherit the permissions of the user who generated the URL for GET / PUT.

![](./assets/Pasted%20image%2020250924071635.png)
