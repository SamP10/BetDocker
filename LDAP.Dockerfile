FROM osixia/openldap

ENV LDAP_ORGANISATION="Bet 24/7"\
    LDAP_DOMAIN="bet.247.com"
COPY ./ldap/bootstrap.ldif /container/service/slapd/assets/bootstrap.ldif
COPY ./ldap/ldap.conf /etc/ldap/ldap.conf
RUN chmod 600 /etc/ldap/ldap.conf
COPY ./ldap/nsswitch.conf /etc/nsswitch.conf
COPY ./ldapUserDir/ /home/
COPY ./ldap/sssd.conf /etc/sssd/sssd.conf
RUN chmod 600 /etc/sssd/sssd.conf

RUN ldapadd -x -D "cn=admin,dc=bet,dc=247,dc=com" -w tiaspbiqe2r -H ldapi:/// -f /container/service/slapd/assets/bootstrap.ldif