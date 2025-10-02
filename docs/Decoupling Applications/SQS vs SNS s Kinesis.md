---
sidebar_position: 36
---

| SQS                                      | SNS                                                  | Kinesis                                          |
| ---------------------------------------- | ---------------------------------------------------- | ------------------------------------------------ |
| Consumer pull data                       | Push data to many subscribers                        | Standard: pull data; Enhanced-fan out: push data |
| Data is deleted after being consumed     | Data is not persisted                                | Possibility to reply data                        |
| No need to provision throughput          | No need to provision throughput                      | Provisioned mode or on demand capacity mode      |
| Ordering guarantees only on FIFO queues. | FIFO capability for SQS FIFO                         | Ordering at the shard level                      |
|                                          | Pub/Sub                                              | Meant for real-time big data analytics and ETL.  |
|                                          | Integrates with SQS for fan-out architecture pattern |                                                  |
