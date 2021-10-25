FROM mysql:8.0.27
RUN mkdir db && \
    apt-get update && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ADD ./db/my.cnf /etc/mysql/conf.d/my.cnf
WORKDIR /db
CMD ["mysqld"]
