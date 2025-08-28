FROM docker.io/arm64v8/golang:alpine
#ADD alpine-minirootfs-3.22.1-aarch64.tar.gz / # buildkit
#CMD ["/bin/sh"]
#RUN pwd
#WORKDIR /
#RUN pwd
#RUN ls
RUN mkdir -p /root/go/bin/
#COPY /home/runner/work/ipxbox/ipxbox/artifacts/ipxbox /root/go/bin/ipxbox
COPY output/ipxbox /root/go/bin/ipxbox
#COPY artifacts2/ipxbox /root/go/bin/ipxbox
#RUN /bin/sh -c apk update
#RUN /bin/sh -c apk add libpcap
ENTRYPOINT ["/root/go/bin/ipxbox", "--port=213"]
