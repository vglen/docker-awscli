FROM amazonlinux:2018.03.0.20191219.0

LABEL maintainer="Glen Stummer <glen@glen.dev>"

RUN yum install -y python36 && \
    pip-3.6 install awscli==1.17.3 --upgrade --user && \
    yum clean all

RUN ln -s /root/.local/bin/aws /usr/local/bin/aws

CMD ["/bin/bash"]