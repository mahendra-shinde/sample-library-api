# Sample REST API project

A Sample REST API Built with Spring Boot.

## Project Overview
This project is a library management system that provides RESTful APIs for managing books, members, and book issues. It is built using Spring Boot and integrates with several tools and technologies to enhance its functionality and deployment.

### Key Features
- **Azure Application Insights**: Integrated for monitoring and logging application performance.
- **Swagger**: Used for API documentation and testing.
- **Docker**: Containerized for easy deployment and scalability.

## Prerequisites
- Java 11 or higher
- Docker installed on your system
- Maven installed for building the project

## Building and Running Locally in a Docker Container

1. **Clone the Repository**
   ```bash
   git clone https://github.com/mahendra-shinde/sample-library-api.git
   cd sample-library-api
   ```

2. **Build the Project**
   Use Maven to build the project and create a JAR file:
   ```bash
   mvn clean package
   ```

3. **Build the Docker Image**
   Use the provided `Dockerfile` to build a Docker image:
   ```bash
   docker build -t sample-library-api .
   ```

4. **Run the Docker Container**
   Start the application in a Docker container:
   ```bash
   docker run -p 8080:8080 sample-library-api
   ```

5. **Access the Application**
   - The application will be available at `http://localhost:8080`.
   - Swagger UI can be accessed at `http://localhost:8080/swagger-ui.html`.

## Additional Information
- **Database Initialization**: The application uses `schema.sql` and `data.sql` for initializing the database schema and sample data.
- **Monitoring**: Azure Application Insights is configured via the `applicationinsights-agent.jar` file.

