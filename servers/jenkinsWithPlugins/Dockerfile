FROM ubuntu:12.04
MAINTAINER Viktor Farcic, "viktor@farcic.com"

# General
RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update && apt-get clean
RUN apt-get install -q -y wget
RUN apt-get install -q -y unzip

# JDK
RUN apt-get install -q -y openjdk-7-jdk && apt-get clean
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# GIT
RUN apt-get install -q -y git

# Gradle
ADD https://services.gradle.org/distributions/gradle-1.12-all.zip /opt/gradle-1.12-all.zip
RUN unzip /opt/gradle-1.12-all.zip -d /opt/
ENV GRADLE_HOME /opt/gradle-1.12
ENV PATH $PATH:$GRADLE_HOME/bin

# Jenkins
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /opt/jenkins.war
RUN ln -sf /jenkins /root/.jenkins

# Jenkins: Dependency plugins
ADD https://updates.jenkins-ci.org/latest/credentials.hpi /jenkins/plugins/credentials.hpi
ADD https://updates.jenkins-ci.org/latest/ssh-credentials.hpi /jenkins/plugins/ssh-credentials.hpi
ADD https://updates.jenkins-ci.org/latest/promoted-builds.hpi /jenkins/plugins/promoted-builds.hpi
ADD https://updates.jenkins-ci.org/latest/javadoc.hpi /jenkins/plugins/javadoc.hpi
ADD https://updates.jenkins-ci.org/latest/mailer.hpi /jenkins/plugins/mailer.hpi
ADD https://updates.jenkins-ci.org/latest/token-macro.hpi /jenkins/plugins/token-macro.hpi
ADD https://updates.jenkins-ci.org/latest/maven-plugin.hpi /jenkins/plugins/maven-plugin.hpi
ADD https://updates.jenkins-ci.org/latest/scm-api.hpi /jenkins/plugins/scm-api.hpi
ADD https://updates.jenkins-ci.org/latest/subversion.hpi /jenkins/plugins/subversion.hpi
ADD https://updates.jenkins-ci.org/latest/run-condition.hpi /jenkins/plugins/run-condition.hpi
ADD https://updates.jenkins-ci.org/latest/conditional-buildstep.hpi /jenkins/plugins/conditional-buildstep.hpi
ADD https://updates.jenkins-ci.org/latest/parameterized-trigger.hpi /jenkins/plugins/parameterized-trigger.hpi
ADD https://updates.jenkins-ci.org/latest/git-client.hpi /jenkins/plugins/git-client.hpi
ADD https://updates.jenkins-ci.org/latest/dashboard-view.hpi /jenkins/plugins/dashboard-view.hpi
ADD https://updates.jenkins-ci.org/latest/ant.hpi /jenkins/plugins/ant.hpi
ADD https://updates.jenkins-ci.org/latest/analysis-core.hpi /jenkins/plugins/analysis-core.hpi

# Jenkins: Plugins
ADD https://updates.jenkins-ci.org/latest/git.hpi /jenkins/plugins/git.hpi
ADD https://updates.jenkins-ci.org/latest/gradle.hpi /jenkins/plugins/gradle.hpi
ADD https://updates.jenkins-ci.org/latest/analysis-collector.hpi /jenkins/plugins/analysis-collector.hpi
ADD https://updates.jenkins-ci.org/latest/checkstyle.hpi /jenkins/plugins/checkstyle.hpi
ADD https://updates.jenkins-ci.org/latest/findbugs.hpi /jenkins/plugins/findbugs.hpi
ADD https://updates.jenkins-ci.org/latest/pmd.hpi /jenkins/plugins/pmd.hpi



ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]