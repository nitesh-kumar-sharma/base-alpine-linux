FROM alpine:3.9
LABEL MAINTAINER="Nitesh K. Sharma <sharma.nitesh590@gmail.com>"
ENV PATH=$PATH:/etc/prerequisite/
RUN apk add --no-cache --update bash \
		procps && \
		rm -rf /var/cache/apk/* && \
		echo "export PATH=$PATH"
COPY ./script/* /etc/prerequisite/*