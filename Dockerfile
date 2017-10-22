FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y -qq krb5-user libkrb-dev
RUN apt-get install nodejs npm
RUN rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install -q ansible msrestazure azure==2.0.0 netaddr ansible-lint pywinrm[kerberos]

WORKDIR /ansible

CMD ["/bin/bash"]