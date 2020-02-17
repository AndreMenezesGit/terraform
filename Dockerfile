FROM scratch

ADD alpine-minirootfs-3.11.3-x86_64.tar.gz /

RUN apk update && apk add git openssh

RUN wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip && \
    unzip terraform_0.12.20_linux_amd64.zip && \
    rm -rf terraform_0.12.20_linux_amd64.zip && \
    cp terraform /usr/bin && \
    chmod +x terraform

CMD ["/bin/sh"]
