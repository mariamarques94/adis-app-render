FROM tomcat:9.0-jdk17-temurin

# Elimina las apps de ejemplo de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia tu WAR y lo despliega como aplicación raíz
COPY migueltolosa-0.1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
