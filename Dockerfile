FROM maven:3-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn -B package 
# /app/target/app.jar

FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/app.jar .
CMD ["java", "-jar", "app.jar"]
EXPOSE 8080

# Внутри /app/config -> /application-confg
# Внутри /app/media -> /media
# docker run \
# ...
# -p 5432:5432
# postgresql:14-alpine

# docker run \
# -p 8080:8080 \
# -v $(PWD)/application-config:/app/config:ro \
# -v $(PWD)/media:/app/media:rw
# app
