Class {
	#name : #Postulante,
	#superclass : #Object,
	#instVars : [
		'direccion',
		'contacto'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
Postulante >> inicializarDireccion: unaDireccion contacto: unContacto [
	direccion:= unaDireccion.
	contacto := unContacto.
]
