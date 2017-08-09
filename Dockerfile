FROM tomcat:7.0-jre8

ENV SECRET_KEY_BASE 123456789abcdefghijklmnopqrstuvwxyz
ENV WEBAPPS_DIR /usr/local/tomcat/webapps

COPY jruby-rails-tomcat-sample.war $WEBAPPS_DIR/

EXPOSE 8080
CMD ["catalina.sh", "run"]
