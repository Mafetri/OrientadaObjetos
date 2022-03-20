Class {
	#name : #AdminPinacoteca,
	#superclass : #Object,
	#instVars : [
		'colPinacotecas',
		'colAutores'
	],
	#category : #TP3
}

{ #category : #'as yet unclassified' }
AdminPinacoteca >> agregarAutor: unAutor [
colAutores add: unAutor.
]

{ #category : #'as yet unclassified' }
AdminPinacoteca >> agregarPinacoteca: unaPinacoteca [
colPinacotecas add: unaPinacoteca 
]

{ #category : #'as yet unclassified' }
AdminPinacoteca >> getAutores [
^ colAutores
]

{ #category : #'as yet unclassified' }
AdminPinacoteca >> getPinacotecas [
^ colPinacotecas 
	
]

{ #category : #'as yet unclassified' }
AdminPinacoteca >> inicializarAutores: coleccionAutores pinacotecas: coleccionPinacotecas [
colAutores := coleccionAutores.
colPinacotecas := coleccionPinacotecas 
]

{ #category : #'as yet unclassified' }
AdminPinacoteca >> listarPinacotecasConCuadrosDelAutor: unAutor [
	
	^ colPinacotecas select: [ :pinacoteca |  pinacoteca tieneCuadros: unAutor getColCuadros]
]
