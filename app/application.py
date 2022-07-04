#!/usr/bin/python
# coding: utf-8
from flask import Flask

app = Flask(__name__)

@app.route('/')
def entry_point():
    print('Request received')
    return 'Hello World!'

if __name__ == '__main__':
    app.run(debug=True)