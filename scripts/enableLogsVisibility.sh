#/bin/bash

nodeType=$1;
pathLog="";

case "$1" in
"apache" ) pathLog="/var/log/httpd";;
"maven" ) pathLog="/var/log/maven/";;
"memcached" ) pathLog="/var/log/memcached";;
"nginx" ) pathLog="/var/log/nginx";;
"nginxphp" ) pathLog="/var/log/nginx";;
"varnish" ) pathLog="/var/log/varnish";;
"tomcat" ) pathLog="/opt/tomcat/logs";;
esac

[[ ! -z ${pathLog} ]] && {
  [ ! -d "/var/log/bitninja" ] && ln -s /var/log/bitninja ${pathLog}
  [ ! -d "/var/log/bitninja-ssl-termination" ] && ln -s /var/log/bitninja-ssl-termination ${pathLog}
}
exit 0;
