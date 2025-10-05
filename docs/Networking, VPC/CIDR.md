---
sidebar_position: 1
---

- Classless Inter-Domain Routing: A method for allocating IP addresses.

## Base IP

- Represents IP contained in the range.

## Subnet Mask

- Defines how many bits can change in IP.
  - /8 <-> 255.0.0.0
  - /16 <-> 255.255.0.0
  - /24 <-> 255.255.255.0
  - /32 <-> 255.255.255.255
- Subnet Mask allows part of underlying IP to get additional next values from base IP.
  - /32 \– no octet can change
  - /24 \– last octet can change
  - /16 \– last 2 octets can change
  - /8 \– last 3 octets can change
  - /0 \– all octets can change
