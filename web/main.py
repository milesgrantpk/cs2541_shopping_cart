from flask import Flask, render_template, request, session
import mysql.connector

app = Flask('app')
app.secret_key = b'letsGoShopping'

mydb = mysql.connector.connect(
  host = "ec2-54-175-198-125.compute-1.amazonaws.com",
  user = "milesgrant",
  password = "seas",
  database = "ShoppingCart"
)

@app.route('/')
def home():
  # Render the homepage 
  return render_template("index.html", error_message="")

app.run(host="ec2-54-175-198-125.compute-1.amazonaws.com", port=8080)