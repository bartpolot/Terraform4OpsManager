#
# REQUIRED
#
# Enter your Project ID - It can be found in the Ops Manager UI under Settings ->
# Group Settings.
#
mmsGroupId=${mmsGroupId}


#
# REQUIRED
#
# Enter your API key - It can be found in the Ops Manager UI under Settings ->
# Group Settings.
#
mmsApiKey=${mmsApiKey}

#
# Hostname of the Ops Manager web server. The hostname will match what is used
# to access the Ops Manager UI. The default port for an Ops Manager install
# is 8080.
#
# ex. http://opsmanaager.<company>.com:8080
mmsBaseUrl=${mmsBaseUrl}

#
# Path to log file
#
logFile=/var/log/mongodb-mms-automation/automation-agent.log

#
# Path to backup cluster config to
#
mmsConfigBackup=/var/lib/mongodb-mms-automation/mms-cluster-config-backup.json

#
# Lowest log level to log.  Can be (in order): DEBUG, ROUTINE, INFO, WARN, ERROR, DOOM
#
logLevel=INFO

#
# Maximum number of rotated log files
#
maxLogFiles=10

#
# Maximum size in bytes of a log file (before rotating)
#
maxLogFileSize=268435456

#
# URL to proxy all HTTP requests through
#
#httpProxy=

# For additional optional settings, please see
# https://docs.opsmanager.mongodb.com/current/reference/mongodb-agent-settings/index.html