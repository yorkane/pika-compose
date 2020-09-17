FROM centos:7
COPY pika/ /pika/
RUN yum install -y rsync \
	&& yum clean all
ENTRYPOINT ["/pika/entrypoint.sh"]
CMD ["/pika/bin/pika", "-c", "/pika/conf/pika.conf"]


# docker rm -f pika && docker rmi pika:3.3.5
# docker build ./ 