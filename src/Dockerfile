FROM adoptopenjdk/openjdk11:jre-11.0.27_6 

ENV SELENIUM_VERSION=4.33.0
WORKDIR /app
ADD https://github.com/SeleniumHQ/selenium/releases/download/selenium-${SELENIUM_VERSION}/selenium-server-${SELENIUM_VERSION}.jar /app/selenium-server.jar

CMD ["java","-jar", "selenium-server.jar", "hub"]

