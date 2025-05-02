FROM openjdk:17
EXPOSE 8080
ADD build/libs/springboot-images-new.jar springboot-images-new.jar
ENTRYPOINT ["java", "-jar", "/springboot-images-new.jar"]