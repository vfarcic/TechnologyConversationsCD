# General
echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
apt-get update && apt-get clean
apt-get install -q -y wget
apt-get install -q -y unzip

# JDK
apt-get install -q -y openjdk-7-jdk && apt-get clean
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

# GIT
apt-get install -q -y git

# Gradle
mkdir /opt/
cd /opt/
wget https://services.gradle.org/distributions/gradle-1.12-all.zip
unzip /opt/gradle-1.12-all.zip -d /opt/
export GRADLE_HOME=/opt/gradle-1.12
export PATH=$PATH:$GRADLE_HOME/bin

# Jenkins
cd /opt/
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
ln -sf /jenkins /root/.jenkins

# Jenkins: Dependency plugins
mkdir -p /jenkins/plugins
cd /jenkins/plugins
wget https://updates.jenkins-ci.org/latest/credentials.hpi
wget https://updates.jenkins-ci.org/latest/ssh-credentials.hpi
wget https://updates.jenkins-ci.org/latest/promoted-builds.hpi
wget https://updates.jenkins-ci.org/latest/javadoc.hpi
wget https://updates.jenkins-ci.org/latest/mailer.hpi
wget https://updates.jenkins-ci.org/latest/token-macro.hpi
wget https://updates.jenkins-ci.org/latest/maven-plugin.hpi
wget https://updates.jenkins-ci.org/latest/scm-api.hpi
wget https://updates.jenkins-ci.org/latest/subversion.hpi
wget https://updates.jenkins-ci.org/latest/run-condition.hpi
wget https://updates.jenkins-ci.org/latest/conditional-buildstep.hpi
wget https://updates.jenkins-ci.org/latest/parameterized-trigger.hpi
wget https://updates.jenkins-ci.org/latest/git-client.hpi
wget https://updates.jenkins-ci.org/latest/dashboard-view.hpi
wget https://updates.jenkins-ci.org/latest/ant.hpi
wget https://updates.jenkins-ci.org/latest/analysis-core.hpi

# Jenkins: Plugins
wget https://updates.jenkins-ci.org/latest/git.hpi
wget https://updates.jenkins-ci.org/latest/gradle.hpi
wget https://updates.jenkins-ci.org/latest/analysis-collector.hpi
wget https://updates.jenkins-ci.org/latest/checkstyle.hpi
wget https://updates.jenkins-ci.org/latest/findbugs.hpi
wget https://updates.jenkins-ci.org/latest/pmd.hpi

java -jar /opt/jenkins.war