
#Setting Indonesia Timezone
timedatectl set-timezone Asia/Jakarta
chmod -R 777 /opt /usr

#remove temp and work directory
rm -rf /opt/liferayee7sp4/tomcat-8.0.32/temp
rm -rf /opt/liferayee7sp4/tomcat-8.0.32/work

#installing latest patch
export PATH=$PATH:/opt/liferayee7sp4/jdk/bin
/opt/liferayee7sp4/patching-tool/patching-tool.sh info
/opt/liferayee7sp4/patching-tool/patching-tool.sh install
/opt/liferayee7sp4/patching-tool/patching-tool.sh info
rm -rf /opt/liferayee7sp4/osgi/state




# Removing Temp Directories and Setting Up Path for Liferay

echo rm -rf /opt/liferayee7sp4/tomcat-8.0.32/temp > /usr/bin/liferay
echo rm -rf /opt/liferayee7sp4/tomcat-8.0.32/work >> /usr/bin/liferay
echo export JAVA_HOME=/opt/liferayee7sp4/jdk >> /usr/bin/liferay
echo export PATH=$PATH:$JAVA_HOME/bin >> /usr/bin/liferay
echo /opt/liferayee7sp4/tomcat-8.0.32/bin/catalina.sh run >> /usr/bin/liferay
