# defino las tablas
from flask import Flask, jsonify, request
# del modulo flask importar la clase Flask y los métodos jsonify,request
from flask_cors import CORS       # del modulo flask_cors importar CORS
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from app import app, db 

# defino las tablas
class DataPlantas(db.Model): 
    idPlantas=db.Column(db.Integer, primary_key=True)   #define los campos de la tabla no es autoincremento
    Ubicacion=db.Column(db.String(200))
    Sustrato=db.Column(db.String(200))
    Riego=db.Column(db.String(200))
    Floracion=db.Column(db.String(200))
    Tamano=db.Column(db.String(200))
    Observaciones=db.Column(db.String(1200))
    LinkImagenes=db.Column(db.String(200))
    Estado=db.Column(db.String(1))
    Proceso=db.Column(db.String(1))
    def __init__(self, idPlantas, Ubicacion, Sustrato, Riego, Floracion, Tamano, Observaciones, LinkImagenes, Estado, Proceso):
        self.idPlantas=idPlantas 
        self.Ubicacion=Ubicacion
        self.Sustrato=Sustrato
        self.Riego=Riego
        self.Floracion=Floracion
        self.Tamano=Tamano
        self.Observaciones=Observaciones
        self.LinkImagenes=LinkImagenes
        self.Estado=Estado
        self.Proceso=Proceso

    #  si hay que crear mas tablas , se hace aqui

with app.app_context():
    db.create_all()  # aqui crea todas las tablas si es que no estan creadas
#  ************************************************************