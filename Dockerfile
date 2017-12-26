FROM java:8
MAINTAINER manasa.murthy@mindtree.com
VOLUME /root
EXPOSE 8080
ENV APP_HOME /app
RUN mkdir $APP_HOME
RUN  apt-get update \
  && rm -rf /var/lib/apt/lists/*
WORKDIR $APP_HOME
ADD target/demo-1.0.jar .
#CMD ["cd","/app"]
#CMD ["wget","https://s3-eu-west-1.amazonaws.com/kope-kubes/demo-1.0.jar"]
#RUN bash -c 'touch demo-1.0.jar'
WORKDIR $APP_HOME
CMD ["java","-jar","demo-1.0.jar"]
