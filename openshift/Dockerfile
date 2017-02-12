
# openshift-chinalife-eap64
FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift

# TODO: Put the maintainer name in the image metadata
MAINTAINER Jason Peng <hpeng@redhat.com>

# TODO: Rename the builder environment variable to inform users about application you provide them
ENV BUILDER_VERSION 1.0

# TODO: Set labels used in OpenShift to describe the builder image
LABEL io.k8s.description="Platform for building EAP from SVN" \
      io.k8s.display-name="EAP BUILDER " \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,eap,javaee,java,jboss,xpaas,custom" 

USER root

COPY ./gradle-2.9-all.zip /tmp/gradle-2.9-all.zip
RUN unzip -oq /tmp/gradle-2.9-all.zip -d /opt/gradle
RUN ln -sfn /opt/gradle/gradle-2.9 /opt/gradle/latest
CMD export GRADLE_HOME=/opt/gradle/latest
CMD export PATH=$PATH:$GRADLE_HOME/bin

# check installation
#RUN /opt/gradle/latest/bin/gradle -v
CMD gradle -v


# TODO: Copy the S2I scripts to /usr/local/s2i, since openshift/base-centos7 image sets io.openshift.s2i.scripts-url label that way, or update that label
COPY ./s2i/ /usr/local/s2i

USER 185