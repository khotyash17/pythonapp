# Title 
### Python App
#### A simple Flask-based web application designed to demonstrate the deployment of a Python app using Docker and AWS EC2.

# Overview
### This project showcases a basic Flask application that can be containerized using Docker and deployed on AWS EC2 instances. It serves as a foundational example for beginners looking to understand the integration of Flask, Docker, and AWS services.

# Features
- Simple Flask web application
- Dockerized for container deployment
- Deployment instructions for AWS EC2
- Sample ``` requirements.txt ``` for Python dependencies

# Prerequisites
## Before you begin, ensure you have met the following requirements:
- Python 3.x installed on your machine
- pip package manager
- Docker installed and running
- AWS account with access to EC2
- Git installed on your machine

# Installation
1. Clone the repository:
```
- git clone https://github.com/khotyash17/pythonapp.git
- cd pythonapp
```
2. Create and activate a virtual environment:
```
python3 -m venv venv
source venv/bin/activate
```
3. Install the required packages:
```
pip install -r requirements.txt
```
# Running the Application
### To run the Flask application locally:
```
python3 app.py
```
#### The application will start on http://127.0.0.1:5000/ by default.

# Docker Deployment
1. Build the Docker image:
```
docker build -t myimg .
```
2. Run the Docker container:
```
docker run -d -p 5000:5000 --name myflaskcontainer myimg
```
#### The application will be accessible at http://localhost:5000/.
# AWS EC2 Deployment
1. Launch an EC2 instance:
- Choose an Amazon Linux 2 AMI
- Configure security group to allow inbound traffic on port 5000
2. Connect to your EC2 instance via SSH:
```
ssh -i your-key.pem ec2-user@your-ec2-public-ip
```
3. Install necessary packages:
```
sudo yum update -y
sudo yum install python3 git docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
```
#### Log out and log back in for the group changes to take effect.
4. Clone the repository and navigate to the project directory:
```
git clone https://github.com/khotyash17/pythonapp.git
cd pythonapp
```
5. Build and run the Docker container:
```
docker build -t myimg .
docker run -d -p 5000:5000 --name myflaskcontainer myimg
```
7. Access the application:
```
Open your browser and navigate to http://your-ec2-public-ip:5000/.
```
### Feel free to customize this README further to match any additional features or configurations specific to your project.

