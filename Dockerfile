# Base image Tomcat
FROM tomcat:9.0-jdk17

# Metadata
LABEL maintainer="giang812105@gmail.com"

# Xoá webapps mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào Tomcat webapps
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port Tomcat
EXPOSE 8080