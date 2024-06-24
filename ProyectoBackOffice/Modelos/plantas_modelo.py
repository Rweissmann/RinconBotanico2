# defino las tablas
from flask import Flask ,jsonify ,request
# del modulo flask importar la clase Flask y los métodos jsonify,request
from flask_cors import CORS       # del modulo flask_cors importar CORS
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from app import app, db

# defino las tablas
class Plantas (db.Model):   # la clase Plantas hereda de db.Model de SQLAlquemy   
    idPlantas=db.Column(db.Integer, primary_key=True)   #define los campos de la tabla id no es autogenerado esta en un rango
    PlantasNombre=db.Column(db.String(200))
    Categoria=db.Column(db.Integer)
    CategoriaDescripcion=db.Column(db.String(100))
    Estado=db.Column(db.String(1))
    Proceso=db.Column(db.String(1))
    def __init__(self, idPlantas, PlantasNombre, Categoria, CategoriaDescripcion, Estado, Proceso):
        self.idPlantas=idPlantas # No es autoincremento
        self.PlantasNombre=PlantasNombre
        self.Categoria=Categoria
        self.CategoriaDescripcion=CategoriaDescripcion
        self.Estado=Estado
        self.Proceso=Proceso
        
    #  si hay que crear mas tablas , se hace aqui

with app.app_context():
    db.create_all()  # aqui crea todas las tablas si es que no estan creadas
#  ************************************************************

