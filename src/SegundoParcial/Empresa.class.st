Class {
	#name : #Empresa,
	#superclass : #Postulante,
	#instVars : [
		'nombre',
		'rubro',
		'rango'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
Empresa class >> crearDireccion: unaDireccion contacto: unContacto nombre: unNombre rubro: unRubro rango: unRango [
	| unaEmpresa |
	unaEmpresa := self new.
	unaEmpresa
		inicializarDireccion: unaDireccion
		contacto: unContacto
		nombre: unNombre
		rubro: unRubro
		rango: unRango.
	^ unaEmpresa
]

{ #category : #'as yet unclassified' }
Empresa >> inicializarDireccion: unaDireccion contacto: unContacto nombre: unNombre rubro: unRubro rango: unRango [
	self inicializarDireccion: unaDireccion contacto: unContacto.
	nombre := unNombre.
	rubro := unRubro .
	rango := unRango. 
]
