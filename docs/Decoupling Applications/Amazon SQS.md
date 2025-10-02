---
sidebar_position: 30
---

## What is a queue?

![](./assets/Pasted%20image%2020251001062348.png)

## Producers

- Produced to SQS using SDK.
- The message is persisted until a consumer deletes it.
- Message retention: default 4 days, up to 14 days.

## Consumers

- Poll SQS for messages (receives 10 messages at a time)
- Process the messages.
- Deletes the messages using SDK.

![](./assets/Pasted%20image%2020251001064853.png)

### Multiple EC2 Instances

- Receive and process messages in parallel.
- At least one delivery.
- Consumers delete messages after processing them.
- Scale consumers to improve throughput.

### Auto Scaling Group

![](./assets/Pasted%20image%2020251001065306.png)

## Security

- Encryption
- Access Controls
- SQS Access Policies

## Message Visibility Timeout

- Once the message is polled by a consume, it becomes invisible to other consumers.
- After the visibility time out, if the message is not deleted, it will be visible in SQS.
- A consumer can call `ChangeMessageVisibility` API to get more time.

![](./assets/Pasted%20image%2020251001072805.png)

## Long Polling

- When consumer requests messages from the queue, it can optionally wait for the messages to arrive.
- This is called Long Polling.
- It helps decreases the number of API calls made to SQS.
- It can be enabled at queue level or at API level using `WaitTimeSeconds`.

## FIFO Queue

- Limited throughput: 300 messages per second without batching; 3000 messages per second with batching.
- Exactly once send capability, by removing duplicates.
- Ordering my Message Group ID.

## Buffer to database writes

![](./assets/Pasted%20image%2020251001081024.png)
