# --- build stage ---
FROM maven:3.9.9-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -DskipTests package

# --- runtime stage (Tomcat) ---
FROM tomcat:9.0-jdk11-openjdk
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Copy WAR (rename to ROOT.war to serve at root)
COPY --from=build /app/target/*.war $CATALINA_HOME/webapps/ROOT.war

# Replace Tomcat port with ENV PORT at runtime and run
# Render cung cấp env var PORT (nếu không có, mặc định Tomcat sẽ lắng nghe 8080)
EXPOSE 8080
CMD sh -c "if [ -n \"$PORT\" ]; then sed -i 's/port=\"8080\"/port=\"$PORT\"/' $CATALINA_HOME/conf/server.xml; fi && catalina.sh run"
