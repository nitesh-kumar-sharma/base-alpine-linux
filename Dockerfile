FROM alpine:3.9
LABEL MAINTAINER="Nitesh K. Sharma <sharma.nitesh590@gmail.com>"
RUN apk add bash
ADD wait-for-it.sh /etc/wait-for-it.sh
ENTRYPOINT ["/etc/wait-for-it.sh","@$"]