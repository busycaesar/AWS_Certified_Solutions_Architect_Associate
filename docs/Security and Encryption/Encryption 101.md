---
sidebar_position: 100
---

## Encryption in flight (TLS/SSL)

- Data is encrypted before sending and decrypted after receiving.
- Ensures no man in the middle attack.

## Server-side Encryption

- Data is encrypted after being received and decrypted before sending.
- Data is stored in encrypted form.
- Encryption/Decryption keys must be managed and server should have access to it.

## Client-side Encryption

- Data is encrypted by the client and is never decrypted by the server.
- Client decrypts the data after receiving it.
