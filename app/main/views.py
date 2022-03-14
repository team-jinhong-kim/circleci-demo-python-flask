from flask import redirect, send_from_directory, request
from . import main

@main.route('/')
def index():
    return send_from_directory('templates', 'index.html')

@main.route('/shutdown')
def server_shutdown():
    shutdown = request.environ.get('werkzeug.server.shutdown')
    shutdown()
    return 'Shutting down...'
