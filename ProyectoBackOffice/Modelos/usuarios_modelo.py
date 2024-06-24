# defino las tablas
from flask import Flask ,jsonify ,request
# del modulo flask importar la clase Flask y los métodos jsonify,request
from flask_cors import CORS       # del modulo flask_cors importar CORS
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from app import app, db   

class Usuarios (db.Model):  # la clase Producto hereda de db.Model de SQLAlquemy   
    idUsuarios=db.Column(db.Integer, primary_key=True)   #define los campos de la tabla
    NombreYApellido=db.Column(db.String(100))
    Email=db.Column(db.String(200))
    Clave=db.Column(db.String(50))
    RolDba=db.Column(db.String(6))
    Ciudad=db.Column(db.String(100))
    Provincia=db.Column(db.String(100))
    Pais=db.Column(db.String(100))
    Estado=db.Column(db.String(1))
    Proceso=db.Column(db.String(1))  
    def __init__(self, idUsuarios, NombreYApellido, Email, Clave, RolDba, Ciudad, Provincia, Pais, Estado, Proceso): #crea el  constructor de la clase
        self.idUsuarios=idUsuarios # no hace falta el id porque lo crea sola mysql por ser auto_incremento
        self.NombreYApellido=NombreYApellido
        self.Email=Email
        self.Clave=Clave
        self.RolDba=RolDba
        self.Ciudad=Ciudad
        self.Provincia=Provincia
        self.Pais=Pais
        self.Estado=Estado
        self.Proceso=Proceso
        
#  si hay que crear mas tablas , se hace aqui

with app.app_context():
    db.create_all()  # aqui crea todas las tablas si es que no estan creadas
#  ************************************************************

