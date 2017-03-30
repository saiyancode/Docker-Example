from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

# Good practice to have this in the app for debugging & making sure the script if only executed when called directly
if __name__ == '__main__':
	app.run(host='0.0.0.0', debug=True)