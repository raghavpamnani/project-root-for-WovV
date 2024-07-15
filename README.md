# project-root-for-WovV

# WordPress on AWS ECS with S3 Integration

## Prerequisites

- AWS CLI installed and configured
- Terraform installed
- Docker installed
- Basic knowledge of AWS services (ECS, RDS, S3, IAM)
- Understanding of Docker, Terraform, WordPress, and PHP Composer

## Setup

### Step 1: Configure Terraform

1. Navigate to the `ecs/` directory.
2. Initialize Terraform:
   ```sh
   terraform init

3. Apply the Terraform configuration:
   ```sh
   terraform apply

### Step 2: Build and Push Docker Image

1. Navigate to the docker/ directory.
2. Build the Docker image:
   ```sh
   docker build -t your-docker-repo/wordpress:latest .

3. Push the Docker image to your Docker repository:
   ```sh
   docker push your-docker-repo/wordpress:latest

### Step 3: Deploy WordPress on ECS

1. After the Terraform apply completes, navigate to the ECS console and confirm that the ECS service is running.

### Step 4: Configure WP Offload Media Plugin

1. Log in to your WordPress admin dashboard.
2. Navigate to the WP Offload Media plugin settings.
3. Configure the plugin to use your S3 bucket.