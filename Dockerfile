FROM amazonlinux:2018.03.0.20191219.0

LABEL maintainer="Glen Stummer <glen@glen.dev>"

RUN yum -y install zip unzip

WORKDIR /

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

CMD ["/bin/bash"]