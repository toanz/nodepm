# nodepm
Docker Alpine with Node + Pm2 Ready for Production

### Running the container

Make sure you declared a [process file](http://pm2.keymetrics.io/docs/usage/application-declaration/) called start.yml, this file will be started by PM2.

```bash

# Run example app, mounted as a volume
$ docker run -p 80:3000 -v `pwd`/example:/app toanz/nodepm

### Log output

Append to pm2-docker CMD directive:

- **--json** to output logs in JSON
- **--format** to output logs in key=val style
- **--raw** to display logs in raw format

## Actions

### Monitoring CPU/Usage of each process

```bash
$ docker exec -it <container_id> pm2 monit
```

### Listing managed processes

```bash
$ docker exec -it <container_id> pm2 list
```

### Get more information about a process

```bash
$ docker exec -it <container_id> pm2 show <app_name>
```

### 0sec downtime reload all applications

```bash
$ docker exec -it <container_id> pm2 reload all
```

### Automatically synchronize your application with git

Add into your Dockerfile:

```
RUN pm2 install pm2-auto-pull
```

Or try it:

```bash
$ docker exec -it <container_id> pm2 install pm2-auto-pull
```

*Make sure the .git is present in your application source folder.*

## License

MIT