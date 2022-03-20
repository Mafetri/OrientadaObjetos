Class {
	#name : #Puerto,
	#superclass : #Object,
	#instVars : [
		'colAmarres'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Puerto >> datosUno [
	^ (colAmarres at: 2) getDatos
]

{ #category : #'as yet unclassified' }
Puerto >> esNil [
	^ colAmarres isNil
]

{ #category : #'as yet unclassified' }
Puerto >> getOcupacion [
^ colAmarres size
]

{ #category : #'as yet unclassified' }
Puerto >> registrarUnAlquilerCliente: unCliente barco: unBarco desde: fechaI hasta: fechaF [
	| unAlquiler |
	colAmarres ifNil: [ colAmarres := OrderedCollection new ].
	unAlquiler := Alquiler new.
	unAlquiler
		inicializarConBarco: unBarco
		cliente: unCliente
		posicion: colAmarres size + 1
		fechaI: fechaI
		fechaF: fechaF
		valor: (unBarco calcularValorAlquiler: (fechaF - fechaI) asDays).
	colAmarres add: unAlquiler.
	^ unBarco calcularValorAlquiler: (fechaF subtractDate: fechaI)
]

{ #category : #'as yet unclassified' }
Puerto >> valorAlquileres [
	| colDatos |
	colDatos := OrderedCollection new.
	colAmarres
		do: [ :unAlquiler | colDatos add: unAlquiler getDatos ].
	^ colDatos
]
