FROM maven:3-openjdk-8 AS build-step
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN mvn clean package


# Use From directive to select Base Image
# Base Image - httpd
FROM tomcat

# On httpd image we need code
# use COPY directive to copy from host to image
COPY --from=build-step /app/target/*.war  /usr/local/tomcat/webapps/


