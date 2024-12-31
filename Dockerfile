FROM busybox

COPY ./ipinfo-loop.sh /usr/local/bin/ipinfo-loop.sh

RUN chmod +x /usr/local/bin/ipinfo-loop.sh

ENTRYPOINT ["/usr/local/bin/ipinfo-loop.sh"]
