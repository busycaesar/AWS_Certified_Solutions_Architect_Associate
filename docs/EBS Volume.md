---
sidebar_position: 6
---

- Network drive that can be attached to the instances.
- Persist data after instance termination.
- Bound to specific AZ.
- Can be moved from one instance to another.
- To move volume across AZ, you need to snapshot it.
- Provisioned Capacity: Size in GBs and IOPS.
- You can increase the capacity overtime.

## EBS Snapshorts

- Can copy snapshots across AZ or region.

### Snapshot Archive

- Move snapshot to "archive tier"
- 75% cheaper
- 24 to 72 hours to recover.

### Recycle Bin

- Setup rules to retain deleted snapshots.
- From 1 day to 1 year.

### Fast Snapshot Restore

- Force full initialization of snapshot to have no latency on the first use.

## EBS Volume Types

- gp2 / gp3 (SSD): General purpose, balance price and performance.
- io1 / io2 Block Express (SSD): Highest performance
- st1 (HDD): Low cost, frequently accessed workloads.
- sc1 (HDD): Lowest cost, less frequently accessed workloads.
- Only gp2/gp3 and io1/io2 Block Express can be used as boot volumes.

## EBS Multi-Attach - io1/io2 family

- Same EBS volume to multiple EC2 instances in the same AZ.
- Upto 16 EC2 instances at a time.

## EBS Encryption

- Data at rest (in volume), in flight (volume and instance), snapshot and volumes created from snapshot, are encrypted.
- Has minimal impact on latency.
- Leverages keys from KMS (AES-256).
