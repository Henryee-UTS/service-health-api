from flask import Flask, jsonify

app = Flask(__name__)

SERVICES = {
    "database": "healthy",
    "api": "healthy",
    "authentication": "healthy",
}


@app.get("/health")
def health():
    return jsonify({
        "service": "service-health-api",
        "status": "healthy"
    }), 200


@app.get("/services/<service_name>")
def service_status(service_name):
    status = SERVICES.get(service_name)

    if status is None:
        return jsonify({
            "error": "service not found"
        }), 404

    return jsonify({
        "service": service_name,
        "status": status
    }), 200


if __name__ == "__main__":
    app.run(debug=True)
