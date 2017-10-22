FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip python3-virtualenv
RUN apt-get install -y -qq krb5-user libkrb5-dev
RUN rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
RUN pip3 install -q ansible msrestazure azure==2.0.0 netaddr ansible-lint pywinrm[kerberos]

WORKDIR /ansible

CMD ["/bin/bash"]