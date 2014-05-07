FROM itriage/base
MAINTAINER Jason Waldrip <jason@waldrip.net>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js && apt-get update
RUN apt-get purge -y g++ make
RUN apt-get install -y nodejs
