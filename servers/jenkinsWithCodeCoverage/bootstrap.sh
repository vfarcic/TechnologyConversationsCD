#!/bin/sh

# Jenkins: Jobs
mkdir -p /data/jenkins/jobs/myFirstJob
cp /vagrant/myFirstJob/config.xml /data/jenkins/jobs/myFirstJob/.

# Jenkins: Dependency plugins
mkdir -p /data/jenkins/plugins
cd /data/jenkins/plugins
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
wget https://updates.jenkins-ci.org/latest/htmlpublisher.hpi
wget https://updates.jenkins-ci.org/latest/jacoco.hpi

echo "docker run -d -p 0.0.0.0:8080:8080 -v /data/jenkins:/jenkins vfarcic/cd_jenkins_with_analysis" >/opt/cd_jenkins_with_analysis.sh
chmod 744 /opt/cd_jenkins_with_analysis.sh
