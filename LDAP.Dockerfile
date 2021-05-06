FROM osixia/openldap

ENV LDAP_ORGANISATION="Bet 24/7"\
    LDAP_DOMAIN="bet.247"
COPY ./ldap/bootstrap.ldif /container/service/slapd/assets/config/bootstrap/ldif/50-bootstrap.ldif