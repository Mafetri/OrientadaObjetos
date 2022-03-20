Class {
	#name : #ClienteB,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'nroCelular',
		'email'
	],
	#category : #TP4
}

{ #category : #Observadores }
ClienteB >> getNombre [
^ nombre.
]

{ #category : #'as yet unclassified' }
ClienteB >> inicializarConNombre: unNombre apellido: unApellido nroCelular: unNumero  email: unEmail [
nombre := unNombre.
apellido := unApellido. 
nroCelular := unNumero.
email := unEmail .
]

{ #category : #'as yet unclassified' }
ClienteB >> verificar: rs [ 
^nombre = rs
]
