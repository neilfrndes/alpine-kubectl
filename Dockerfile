FROM alpine:latest

# Update package manager
RUN apk update && apk add --no-cache curl

# Install gettext
RUN apk add gettext

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN mkdir -p $HOME/.kube

ENTRYPOINT []
CMD []
