FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl msmtp pup bash

COPY script.sh /script.sh
RUN chmod +x /script.sh

CMD ["/script.sh"]