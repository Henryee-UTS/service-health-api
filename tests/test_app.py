import pytest

from app import app


@pytest.fixture
def client():
    app.config["TESTING"] = True

    with app.test_client() as client:
        yield client


def test_health_endpoint(client):
    response = client.get("/health")

    assert response.status_code == 200
    assert response.get_json() == {
        "service": "service-health-api",
        "status": "healthy",
    }


def test_known_service(client):
    response = client.get("/services/database")

    assert response.status_code == 200
    assert response.get_json() == {
        "service": "database",
        "status": "healthy",
    }


def test_unknown_service(client):
    response = client.get("/services/payment")

    assert response.status_code == 404
    assert response.get_json() == {
        "error": "service not found",
    }
