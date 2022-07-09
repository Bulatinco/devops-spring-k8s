FROM maven:3-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn -B package 

FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/app.jar .
CMD ["java", "-jar", "app.jar"]
EXPOSE 8080
