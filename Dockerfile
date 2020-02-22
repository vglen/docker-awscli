FROM amazonlinux:2.0.20200207.1

LABEL maintainer="Glen Stummer <glen@glen.dev>"

RUN yum -y install zip unzip

WORKDIR /

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

CMD ["/bin/bash"]