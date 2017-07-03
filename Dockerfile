FROM andretadeu/jenkins-swarm
MAINTAINER Sivakumar Vunnam "sivakumar.vunnam@wdc.com"

USER root

RUN usermod -a -G sudo jenkins \
&& echo "jenkins:jenkinsadmin" | chpasswd

# install dependencies
RUN apt-get update && apt-get install -y \
        autoconf \
        curl \
        tar \
        git-core \
        mercurial \
        openjdk-7-jre-headless \
        openssh-client \
#       postfix \
        unzip \
        python-virtualenv \
        openssh-server \
        supervisor \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

