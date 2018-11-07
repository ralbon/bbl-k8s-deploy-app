from flask import Flask
app = Flask(__name__)
import os
import socket

@app.route("/")
def hello():
    html = "<h3>Hello {name}!</h3>" \
           "<b>Hostname:</b> {hostname}<br/>" \
           "<b>Database fake:</b> {env}<br/>" \
           "<img src=\"https://www.mac4ever.com/images-articles/28874_opinion-et-si-l-on-imaginait-l-iphone-du-futur.jpg\">"

    return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname(), env=os.getenv("ENV", "default"))

