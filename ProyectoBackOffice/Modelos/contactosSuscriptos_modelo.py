# defino las tablas
from flask import Flask ,jsonify ,request
# del modulo flask importar la clase Flask y los métodos jsonify,request
from flask_cors import CORS       # del modulo flask_cors importar CORS
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from app import app, db, ma

class ContactosSuscriptos(db.Model):  
    idContacto=db.Column(db.Integer, primary_key=True) 
    Emails=db.Column(db.String(200))
    def __init__(self, Emails):    #crea el  constructor de la clase
        self.Emails=Emails 

    #  si hay que crear mas tablas , se hace aqui

with app.app_context():
    db.create_all()  # aqui crea todas las tablas si es que no estan creadas
#  ************************************************************