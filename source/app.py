from flask import Flask

app = Flask(__name__)


@app.route('/hello')
def hello_world():
    return 'Hello, World!'


@app.route('/health', methods=['GET'])
def health_check():
    return 'OK', 200
