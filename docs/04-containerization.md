# Phase 4 – Containerizing the Application with Docker

## Objective

Package the Node.js monitoring application into a Docker container to provide a consistent, portable runtime environment that can be deployed across development, testing, and production systems.

Containerization also prepares the application for automated image builds within the Jenkins CI/CD pipeline.

---

## Why Containerize the Application?

Running applications directly on a host machine can introduce inconsistencies caused by differences in operating systems, installed software, or runtime versions.

Docker solves this problem by packaging the application together with its runtime and dependencies into a single portable image.

Benefits include:

- Consistent runtime environment
- Simplified deployments
- Improved portability
- Faster application startup
- Standardized builds for CI/CD pipelines

---

## Dockerfile Design

A `Dockerfile` was created inside the `app/` directory.

```dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
```

### Design Overview

| Instruction | Purpose |
|-------------|---------|
| `FROM node:18-alpine` | Uses a lightweight Node.js 18 base image |
| `WORKDIR /app` | Sets the working directory inside the container |
| `COPY package*.json ./` | Copies dependency definition files |
| `RUN npm ci --omit=dev` | Installs only production dependencies |
| `COPY . .` | Copies the application source code |
| `EXPOSE 3000` | Documents the application listening port |
| `CMD ["node", "server.js"]` | Starts the Express application |

---

## Build Process

From the project root, the Docker image was built using:

```bash
docker build --no-cache -t node-monitoring-app:v1 app/
```

The build completed successfully and produced the application image.

---

## Verify the Image

To confirm the image was created successfully:

```bash
docker images
```

The output included:

```
node-monitoring-app    v1
```

---

## Run the Container

The container was started using:

```bash
docker run -d \
  --name node-monitoring-container \
  -p 3000:3000 \
  node-monitoring-app:v1
```

---

## Verify the Running Container

Confirm the container is running:

```bash
docker ps
```

The output showed the container in the **Up** state with port **3000** mapped to the host.

---

## Verify the Application

The application was successfully accessed through the browser:

- http://localhost:3000
- http://localhost:3000/health
- http://localhost:3000/metrics

Verification confirmed:

- Home page loads successfully
- Health endpoint returns `ok`
- Prometheus metrics endpoint exposes application metrics

The application behaved exactly as it did when running directly on the local machine.

---

## Stop and Remove the Container

After validation, the container was stopped and removed.

```bash
docker stop node-monitoring-container

docker rm node-monitoring-container
```

---

## Challenges Encountered

During the initial Docker build, the following error occurred:

```text
npm ci can only install packages when your package.json
and package-lock.json are in sync.
```

### Root Cause

The local `package-lock.json` file had become inconsistent with the installed dependencies.

### Resolution

The project dependencies were regenerated using:

```bash
rm -rf node_modules

rm package-lock.json

npm cache clean --force

npm install

npm test
```

After regenerating the lock file and confirming that all unit tests passed, the Docker image built successfully.

---

## Commands Used

| Step | Command |
|------|---------|
| Build image | `docker build --no-cache -t node-monitoring-app:v1 app/` |
| List images | `docker images` |
| Run container | `docker run -d --name node-monitoring-container -p 3000:3000 node-monitoring-app:v1` |
| Verify container | `docker ps` |
| Stop container | `docker stop node-monitoring-container` |
| Remove container | `docker rm node-monitoring-container` |

---

## Files Added

```
app/
└── Dockerfile
```

---

## Files Modified

```
app/
├── package.json
└── package-lock.json
```

---

## Results

This phase successfully achieved the following:

- Dockerized the Node.js monitoring application
- Created a production-ready Dockerfile
- Built the Docker image successfully
- Verified the containerized application locally
- Confirmed all application endpoints function correctly inside the container

---

## Key Takeaway

Containerizing the application provides a consistent and reproducible runtime environment, eliminating dependency differences between development and deployment environments. This establishes a reliable foundation for the next phase, where Docker image creation will be automated within the Jenkins CI/CD pipeline before publishing the image to Amazon Elastic Container Registry (ECR).