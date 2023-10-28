"""
Hostober Flask App
"""

import os
from flask import Flask, jsonify # Added this
from flask_cors import CORS
import requests
from dotenv import load_dotenv

# Load environment variables from .env file during development
load_dotenv()

app = Flask(__name__)
CORS(app)

ZONE_ID = os.getenv('ZONE_ID')
CF_API_KEY = os.getenv('CF_API_KEY')
CF_API_EMAIL = os.getenv('CF_API_EMAIL')
API_URL = f'https://api.cloudflare.com/client/v4/zones/{ZONE_ID}/dns_records'


@app.route('/', methods=['GET'])
def proxy():
    ''' This is a docstring for this function'''
    headers = {
        'X-Auth-Email': CF_API_EMAIL,
        'X-Auth-Key': CF_API_KEY,
        'Content-Type': 'application/json'
    }

    try:
        response = requests.request(
            method='GET',
            url=API_URL,
            headers=headers,
            timeout=10 # Added this
        )
    except requests.exceptions.RequestException as e:
        return jsonify({'error': str(e)}), 500
    # except Exception as e:
    #     return jsonify({'error': str(e)}), 500

    return response.json()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
