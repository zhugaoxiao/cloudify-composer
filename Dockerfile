FROM centos

RUN yum install -y python-virtualenv && yum clean all 
RUN curl https://raw.githubusercontent.com/cloudify-cosmo/get-cloudify.py/master/get-cloudify-composer.py | python

CMD /opt/cloudify-composer/nodejs/bin/node /opt/cloudify-composer/blueprint-composer/package/server.js
EXPOSE 3000
