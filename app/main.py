from flask import Flask, jsonify, request
from datetime import datetime
import os

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_time():
    response = {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "ip": request.remote_addr
    }
    return jsonify(response)

if __name__ == '__main__':
    port = int(os.getenv("PORT", 5000))
    app.run(host='0.0.0.0', port=port, debug=True)
