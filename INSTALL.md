## Installation procedure

### Install yoyo
- pip install yoyo-migrations

### Intall database
- Download the files from the [main repo](https://github.com/rainmandata/networkanalytics-voice).
- Create a new database on your Postgres instance. Keep it simple. Call it "rain_man". We love our name in lights!
 - `createdb -U postgres rain_man`
- Install RainmanData Networkanalytics
 - `yoyo -b --no-config-file apply --all --database postgresql://postgres@/rain_man <path to networkanalytics-voice>/dbstruct`

### Fill database with data
- Build your carriers. [Steps](https://github.com/rainmandata/networkanalytics-voice/wiki/Build-a-Carrier)
- Build your customers. [Steps](https://github.com/rainmandata/networkanalytics-voice/wiki/Build-a-Customer)
- Feed your customer CDR and carrier CDR into our ingestion tables.

### Schedule periodic tasks
- Schedule the [maintenance](https://github.com/rainmandata/networkanalytics-voice/wiki/Maintenance) jobs.
