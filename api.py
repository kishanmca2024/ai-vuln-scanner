from flask import Flask, request, jsonify
import subprocess

app = Flask(__name__)

@app.route('/scan', methods=['POST'])
def scan():
    target = request.json.get('target')
    result = subprocess.check_output(["nuclei", "-target", target])
    return jsonify({"result": result.decode()})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
