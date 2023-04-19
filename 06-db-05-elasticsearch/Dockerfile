FROM centos:centos7

ENV ES_NAME=elasticsearch-7.17.9
ENV APP_DIR /opt/elasticsearch
ENV ES_USER elasticsearch

RUN useradd -ms /bin/bash -d ${APP_DIR} ${ES_USER}

COPY ${ES_NAME}-linux-x86_64.tar.gz ./

RUN tar -xf ${ES_NAME}-linux-x86_64.tar.gz && \
    cp -R ${ES_NAME}/* ${APP_DIR} && \
    rm -rf ${ES_NAME}-linux-x86_64.tar.gz && \
    rm -rf ${ES_NAME}

COPY elasticsearch.yml ${APP_DIR}/config/

RUN chmod a+x -R ${APP_DIR}/bin && \
    mkdir /var/lib/elasticsearch && \
    mkdir ${APP_DIR}/snapshots && \
    chown ${ES_USER}: -R ${APP_DIR} && \ 
    chown ${ES_USER}: -R /var/lib/elasticsearch 

ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

USER ${ES_USER}
WORKDIR ${APP_DIR}
EXPOSE 9200 9300

CMD ["bin/elasticsearch"]
