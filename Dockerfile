FROM arm64v8/golang:alpine
CMD ["/bin/sh"]
WORKDIR /
RUN /bin/sh -c apk update
RUN /bin/sh -c apk add libpcap
CMD ["/root/go/bin/ipxbox" "--port=213"]
