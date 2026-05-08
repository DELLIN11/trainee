FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

COPY checker.sh /app/checker.sh
RUN chmod +x /app/checker.sh

CMD ["/app/checker.sh"]
