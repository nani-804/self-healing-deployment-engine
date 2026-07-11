from flask import Flask
import socket
import datetime
import os

app = Flask(__name__)

VERSION = "1.0"

@app.route("/")
def home():
    return f"""
    <h1>🚀 Self-Healing Deployment Engine</h1>
    <h2>Status : Healthy ✅</h2>
    <p><b>Version:</b> {VERSION}</p>
    <p><b>Hostname:</b> {socket.gethostname()}</p>
    <p><b>Time:</b> {datetime.datetime.now()}</p>
    """

@app.route("/health")
def health():
    return {
        "status":"UP",
        "version":VERSION
    },200

@app.route("/version")
def version():
    return {
        "version":VERSION
    }

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
