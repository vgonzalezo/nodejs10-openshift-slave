FROM openshift/jenkins-slave-base-centos7

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

RUN yum -y install nodejs

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
