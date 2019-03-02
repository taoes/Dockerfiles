from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

if __name__ == '__main__':
    #  设置host可保证外网访问
    app.run(host="0.0.0.0")