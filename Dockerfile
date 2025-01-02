FROM busybox

COPY ./ipinfo-loop.sh /usr/local/bin/ipinfo-loop.sh

RUN chmod +x /usr/local/bin/ipinfo-loop.sh

ENV INTERVAL=5

ENTRYPOINT ["/usr/local/bin/ipinfo-loop.sh"]
