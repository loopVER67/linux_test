#!/bin/bash
ldiffile="ou.ldif"
ldif_content=$(cat <<EOF 
  dn: ou=VPN,dc=lksjogja8,dc=lan
  objectClass: organizationalUnit
  ou: VPN

  dn: ou=Mail,dc=lksjogja8,dc=lan
  objectClass: organizationalUnit
  ou: Mail

  dn: ou=Misc,dc=lksjogja8,dc=lan
  objectClass: organizationalUnit
  ou: Misc
EOF)

"$ldif_content" >> $ldiffile
