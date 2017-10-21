# linphone-docker

Run [linphone](http://www.linphone.org/) in Docker.

## Examples

### Run interactively

```
$ sudo docker run -it --rm dwilkie/linphone-docker
```

### Enable sound (ALSA)

Adapted from [here](https://stackoverflow.com/questions/28985714/run-apps-using-audio-in-a-docker-container)

```
$ sudo docker run -it --rm -v /dev/snd:/dev/snd --privileged dwilkie/linphone-docker
```

### Auto Answer

Adapted from [here](https://stackoverflow.com/questions/28985714/run-apps-using-audio-in-a-docker-container)

```
$ sudo docker run -it --rm dwilkie/linphone-docker /bin/bash -c 'linphonec -a'
```

### Run daemonized (with remote control)

```
$ sudo docker run --rm -d --name linphone dwilkie/linphone-docker /bin/bash -c 'linphonecsh init && tail -f /dev/null'
```

### Remotely answer a call

```
$ sudo docker exec linphone /bin/bash -c 'linphonecsh generic answer'
```

### Remotely hangup a call

```
$ sudo docker exec linphone /bin/bash -c 'linphonecsh generic terminate'
```
