FROM docker.io/arm64v8/golang:alpine
#ADD alpine-minirootfs-3.22.1-aarch64.tar.gz / # buildkit
CMD ["/bin/sh"]
WORKDIR /
COPY /artifacts/ipxbox /root/go/bin/ipxbox
RUN /bin/sh -c apk update
RUN /bin/sh -c apk add libpcap
CMD ["/root/go/bin/ipxbox" "--port=213"]
