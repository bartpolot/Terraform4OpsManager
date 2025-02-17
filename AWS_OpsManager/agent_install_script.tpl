#!/bin/sh

curl -OL ${mmsBaseUrl}/download/agent/automation/mongodb-mms-automation-agent-manager-11.0.6.6981-1.x86_64.rhel7.rpm
sudo rpm -U mongodb-mms-automation-agent-manager-11.0.6.6981-1.x86_64.rhel7.rpm
sudo rm /etc/mongodb-mms/automation-agent.config
sudo mv /home/ec2-user/automation-agent.config /etc/mongodb-mms/automation-agent.config
sudo yum -y install cyrus-sasl cyrus-sasl-gssapi cyrus-sasl-plain krb5-libs libcurl net-snmp net-snmp-libs openldap openssl xz-libs
sudo mkdir -p /data
sudo chown mongod:mongod /data
sudo systemctl start mongodb-mms-automation-agent.service
sudo systemctl enable mongodb-mms-automation-agent.service