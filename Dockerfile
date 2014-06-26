FROM centos:centos6
MAINTAINER yuubon

RUN yum install -y wget
RUN yum install -y java-1.6.0-openjdk
RUN wget -O "subsonic-5.0.beta1.rpm" "http://downloads.sourceforge.net/project/subsonic/subsonic/5.0.beta1/subsonic-5.0.beta1.rpm?r=http%3A%2F%2Fwww.subsonic.org%2Fpages%2Fdownload2.jsp%3Ftarget%3Dsubsonic-5.0.beta1.rpm&ts=1403482301&use_mirror=jaist"

RUN rpm -ivh subsonic-5.0.beta1.rpm
RUN rm -f subsonic-5.0.beta1.rpm

EXPOSE 4040 

ADD ./startup.sh /startup.sh
RUN chmod u+x /startup.sh
ADD ./subsonic /etc/default/subsonic
RUN chmod u+x /etc/default/subsonic

ENTRYPOINT ["/startup.sh"]


