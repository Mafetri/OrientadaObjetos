Class {
	#name : #Persona,
	#superclass : #Postulante,
	#instVars : [
		'nombreCompleto',
		'aptitudes'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
Persona class >> crearDireccion: unaDireccion contacto: unContacto nombreCompleto: unNombre aptitudes: unaAptitud [
	|unaPersona|
	unaPersona := self new.
	unaPersona inicializarDireccion: unaDireccion contacto: unContacto nombreCompleto: unNombre aptitudes: unaAptitud.
	^unaPersona .
]

{ #category : #'as yet unclassified' }
Persona >> inicializarDireccion: unaDireccion contacto: unContacto nombreCompleto: unNombre aptitudes: unaAptitud [
	self inicializarDireccion: unaDireccion contacto: unContacto.
	nombreCompleto := unNombre.
	aptitudes := unaAptitud.

]
