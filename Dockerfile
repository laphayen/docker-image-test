# Java 17 JDK 기반 이미지 사용
FROM openjdk:17-jdk-slim

# JAR 파일 경로 설정
ARG JAR_FILE=build/libs/DockerImageTest-0.0.1-SNAPSHOT.jar

# JAR 파일 복사
COPY ${JAR_FILE} app.jar

# 포트 노출
EXPOSE 8080

# JAR 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]
