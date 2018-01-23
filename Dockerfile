FROM openshift/jenkins-slave-base-centos7

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -

RUN yum -y install nodejs

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME
    
RUN cp google-chrome.repo /etc/yum.repos.d 
RUN yum install google-chrome-stable

USER 1001
