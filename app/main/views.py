from flask import redirect, url_for, request
from . import main

@main.route('/', methods=['GET'])
def index():
    return redirect(url_for('.index'))

@main.route('/shutdown')
def server_shutdown():
    shutdown = request.environ.get('werkzeug.server.shutdown')
    shutdown()
    return 'Shutting down...'
