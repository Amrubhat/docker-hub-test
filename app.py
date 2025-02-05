from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/status/verify', methods=['GET'])
def status():
    return jsonify(info="Everything looks good")

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
