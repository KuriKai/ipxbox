FROM arm64v8/golang:latest
CMD ["/bin/sh"]
WORKDIR /
/bin/sh -c apk update
/bin/sh -c apk add libpcap
CMD ["/root/go/bin/ipxbox" "--port=213"]
