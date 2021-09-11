#!/bin/sh
if [ $(id -u) -eq 0 ]; then
    echo "This script must not be executed by root"
    exit
fi

. /etc/opt/me2ess/alfresco/setenv.sh
{% for key, value in sfs_environment.items() %}
export {{key}}="{{value}}"
{% endfor %}
${JAVA_HOME}/bin/java ${JAVA_OPTS} -jar ${ATS_HOME}/alfresco-shared-file-store-*.jar > /var/log/me2ess/alfresco/ats-shared-fs.log