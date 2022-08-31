FROM onlyoffice/documentserver:latest
#simply change the shell when start up.

ARG COMPANY_NAME=onlyoffice
ARG PRODUCT_NAME=documentserver

ENV COMPANY_NAME=$COMPANY_NAME \
    PRODUCT_NAME=$PRODUCT_NAME

COPY ./src/startup.sh /var/lib/$COMPANY_NAME/startup.sh
COPY ./src/run-document-server.sh /app/ds/run-document-server.sh

RUN chmod 777 /app/ds/run-document-server.sh && chmod 777 /var/lib/$COMPANY_NAME/startup.sh

#EXPOSE 80 443

#VOLUME /var/log/$COMPANY_NAME /var/lib/$COMPANY_NAME /var/www/$COMPANY_NAME/Data /var/lib/postgresql /var/lib/rabbitmq /var/lib/redis /usr/share/fonts/truetype/custom

ENTRYPOINT ["/app/ds/run-document-server.sh"]
