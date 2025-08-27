FROM docker.io/arm64v8/golang:alpine
#ADD alpine-minirootfs-3.22.1-aarch64.tar.gz / # buildkit
#CMD ["/bin/sh"]
RUN pwd --no-cache
WORKDIR /
RUN pwd --no-cache
RUN ls
RUN mkdir /root/go/bin/
#COPY /home/runner/work/ipxbox/ipxbox/artifacts/ipxbox /root/go/bin/ipxbox
COPY ./artifacts/ipxbox /root/go/bin/ipxbox
RUN /bin/sh -c apk update
RUN /bin/sh -c apk add libpcap
CMD ["/root/go/bin/ipxbox" "--port=213"]
