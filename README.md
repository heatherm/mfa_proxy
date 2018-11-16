# MFA PROXY

### Prototype for Multi-factor Authentication for Infrastructure Appliances

## LDAP Server

This uses a Sandbox ldap Server from [Forumsys](https://www.forumsys.com/tutorials/integration-how-to/ldap/online-ldap-test-server/).

####LDAP Server Information (read-only access):

Server: ldap.forumsys.com  
Port: 389

Bind DN: cn=read-only-admin,dc=example,dc=com
Bind Password: password

All user passwords are password.

You may also bind to individual Users (uid) or the two Groups (ou) that include:

ou=mathematicians,dc=example,dc=com

- riemann
- gauss
- euler
- euclid

ou=scientists,dc=example,dc=com
- einstein
- newton
- galieleo
- tesla


#### Authentication backed by Devise with username enabled login for LDAP

LDAP uses uid lookup, example:

```
  LDAP: LDAP dn lookup: uid=riemann
  LDAP: LDAP search for login: uid=riemann
  LDAP: LDAP search yielded 1 matches
  LDAP: Authorizing user uid=riemann,dc=example,dc=com
```
