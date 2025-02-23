# SimpleTimeService

## Overview
SimpleTimeService is a lightweight microservice that provides the current timestamp and the requester's IP address in JSON format. It is built using Flask and can be easily deployed via Docker.

## Prerequisites
- [Docker](https://docs.docker.com/get-docker/)
- [Python 3.9+](https://www.python.org/downloads/) (if running locally)

## Installation & Usage
### Running Locally
1. Clone the repository:
   ```sh
   git clone <repository_url>
   cd simple-time-service
   ```
2. Install dependencies:
   ```sh
   pip install -r requirements.txt
   ```
3. Run the service:
   ```sh
   python app/main.py
   ```
4. Access the service:
   ```sh
   curl http://127.0.0.1:5000/
   ```

### Running with Docker Locally and push to Dockerhub
1. Build the Docker image:
   ```sh
   docker build -t simple-time-service .
   ```
2. Run the container:
   ```sh
   docker run -p 5000:5000 simple-time-service
   ```
3. Access the service:
   ```sh
   curl http://localhost:5000/
   ```
4. Push to Dockerhub (Need to be logged in to Dockerhub):
   ```sh
   docker tag <dockerhub acc>/<repo name> simple-time-service
   docker push <dockerhub acc>/<repo name>
   ```

### ⚡ Dockerhub details
- **Dockerhub public repo details** – nmadanshah114/devops
