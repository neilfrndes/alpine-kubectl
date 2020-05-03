FROM docker:latest

# Update package manager
RUN apk update && apk add --no-cache curl

# Install gettext
RUN apk add gettext

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN mkdir -p $HOME/.kube

# Install helm
RUN curl -L -o helm-v3.tar.gz https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz
RUN tar -zxvf helm-v3.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/helm

ENTRYPOINT []
CMD []
