# linphone-docker

Run [linphone](http://www.linphone.org/) in Docker.

## Configuration

### ALSA

Adapted from [here](https://stackoverflow.com/questions/28985714/run-apps-using-audio-in-a-docker-container)

```
$ sudo docker run -ti --rm /dev/snd:/dev/snd --privileged dwilkie/linphone-docker
```
