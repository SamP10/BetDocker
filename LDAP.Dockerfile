FROM osixia/openldap

ENV LDAP_ORGANISATION="Bet 24/7"\
    LDAP_DOMAIN="bet.247"
COPY ./ldap/bootstrap.ldif /container/service/slapd/assets/
RUN ldapadd -D "cn=admin,dc=bet,dc=247" -W -H ldapi:/// -f /container/service/slapd/assets/bootstrap.ldif &&\
    tiaspbiqe2r