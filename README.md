# Service Health API

A small Flask API for monitoring the health status of application services.

## Features

- Health check endpoint
- Individual service status lookup
- HTTP 404 handling for unknown services
- Automated testing with pytest
- Code quality checks with Ruff
- Continuous integration with GitHub Actions

## API Endpoints

### Health Check

GET /health

### Service Status

GET /services/<service_name>

Available example services:

- database
- api
- authentication

## Development

Install dependencies:

pip install -r requirements.txt

Run the application:

python app.py

Run tests:

pytest -v

Run code quality checks:

ruff check .

## Continuous Integration

GitHub Actions automatically runs Ruff and pytest on pushes and pull requests to the main branch.
