FROM rancher/confd-base:0.11.0-dev-rancher

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates
VOLUME /opt/jboss/keycloak-proxy-config

ENTRYPOINT ["/confd"]

CMD ["--backend", "rancher", "--prefix", "/2015-07-25"]
