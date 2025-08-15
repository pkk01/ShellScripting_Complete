#!/bin/bash
<< task
Deploy a Django app using Docker and Nginx.
Handles repo cloning, system dependencies, Docker build, and startup.
task

code_clone() {
    echo "Cloning the repo..."
    if [ -d django-notes-app ]; then
        echo "The repo already exists, skipping clone."
        return 1
    else
        git clone https://github.com/LondheShubham153/django-notes-app.git
        return 0
    fi
}

install_requirements() {
    echo "Installing the dependencies..."
    sudo apt-get update
    sudo apt-get install -y docker.io nginx
}

required_restarts() {
    echo "Restarting and enabling services..."
    sudo chown "$USER" /var/run/docker.sock
    sudo systemctl enable docker
    sudo systemctl enable nginx
    sudo systemctl restart docker
}

deploy() {
    echo "Starting Docker build and container..."
    docker build -t notes-app .
    docker run -d -p 8000:8000 notes-app:latest
}

# ----------- MAIN SCRIPT START -----------
echo "******** DEPLOYMENT STARTED *********"

code_clone
echo "Using codebase from ./django-notes-app"
cd django-notes-app || { echo "Directory not found. Exiting."; exit 1; }

if ! install_requirements; then
    echo "Installation failed"
    exit 1
fi

if ! required_restarts; then
    echo "System fault identified"
    exit 1
fi

deploy

echo "******** DEPLOYMENT ENDS **********"

