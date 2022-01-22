# artspace-infrastructure

ARTSpace Infrastructure

Initial Infrastructure for a Prototype of the app.

_This is not, by any means, a production ready setup_

## Services

| Service     | Application | Description           |
| ----------- | ----------- | --------------------- |
| appuserdb   | Postgres    | AppUser main database |
| postdb      | Mongo       | Post main database    |
| core-zoo-1  | ZooKeeper   | Core Kafka Cluster    |
| core-zoo-2  | ZooKeeper   | Core Kafka Cluster    |
| kafka-1     | Kafka       | Core Kafka Cluster    |
| kafka-2     | Kafka       | Core Kafka Cluster    |
| kafka-ui    | Kafka-Ui    | Kafka Mngmt Interface |
| coremonitor | Prometheus  | Monitoring            |
| userredis   | Redis       | AppUser Cache         |

## Utilities

### Cleanup Script

Remove all volumes that are created while running the containers

**Windows**

```powershell
> ./cleanup.ps1
```

**Linux**

```shell
> ./cleanup.sh
```
