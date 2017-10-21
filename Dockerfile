FROM buildpack-deps:jessie

RUN apt-get update && apt-get install -y linphone-nogtk

CMD ["linphonec"]
