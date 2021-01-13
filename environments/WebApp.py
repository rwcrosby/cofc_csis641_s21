from flask import Flask
import platform
import datetime

app = Flask(__name__)

@app.route('/')
def show_info():

    return f"{platform.uname().node}:{str(datetime.datetime.now())}:{(' ').join(platform.uname())}"
