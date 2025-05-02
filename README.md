## ⚙️ GitHub Actions Integration (CI/CD + Docker)

This project uses **GitHub Actions** to automate building, testing, and Dockerizing the Spring Boot application. The CI/CD pipeline includes:

- ✅ **Java 17 Setup** using Temurin distribution
- ✅ **Gradle Wrapper Execution** with caching support
- ✅ **Build and Package the JAR** using `bootJar`
- ✅ **Docker Image Build & Push** to Docker Hub
- ✅ **Dependency Graph Submission** for security and dependency analysis

### 🛠️ CI/CD Workflow Summary

| Stage                   | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `build`                 | Compiles and packages the app using `./gradlew clean build` and `bootJar`. |
| `docker-build-push`     | Builds a Docker image from the `Dockerfile` and pushes it to Docker Hub.    |
| `dependency-submission` | Submits a dependency graph to GitHub for visibility and Dependabot alerts. |

### 🐳 Docker Integration

The project includes a `Dockerfile` to containerize the Spring Boot application:

```dockerfile
FROM openjdk:17
EXPOSE 8080
ADD build/libs/springboot-images-new.jar springboot-images-new.jar
ENTRYPOINT ["java", "-jar", "/springboot-images-new.jar"]
