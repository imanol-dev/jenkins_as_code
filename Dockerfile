FROM jenkins/jenkins:lts


COPY init-scripts /usr/share/jenkins/ref/init.groovy.d

ADD plugins.txt /usr/share/jenkins/ref/
ADD jenkins.yaml /usr/share/jenkins/ref/

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/

VOLUME /var/jenkins_home
