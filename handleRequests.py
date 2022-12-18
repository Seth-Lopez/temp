import flask
from flask import Flask
from flask import render_template as rt
import os
import subprocess as sb
import sys
import numpy as np
#global vars

env_var = os.environ
app = Flask(__name__)

@app.route("/")
def handleRequests():
    return rt('index.html', template_folder='templates') 
    
def main():
    port = int(os.environ.get("PORT", 10000))
    app.run(debug=True, port=port)
if __name__ == "__main__":
    main()
    #app.run()

    
    




