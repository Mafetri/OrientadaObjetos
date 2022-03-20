Class {
	#name : #Alquiler,
	#superclass : #Object,
	#instVars : [
		'fechaIncial',
		'fechaFinal',
		'cliente',
		'barco',
		'posicionAmarre',
		'valor'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Alquiler >> getBarco [
^ barco
]

{ #category : #'as yet unclassified' }
Alquiler >> getCliente [
^cliente 
]

{ #category : #'as yet unclassified' }
Alquiler >> getDatos [
	^ '(' , posicionAmarre asString , ',' , valor asString , ')'
]

{ #category : #'as yet unclassified' }
Alquiler >> getDiasAlquilados [
	| cantDias |
	cantDias := fechaFinal - fechaFinal.
	^cantDias.
]

{ #category : #'as yet unclassified' }
Alquiler >> getFechaFinal [
^ fechaFinal 
]

{ #category : #'as yet unclassified' }
Alquiler >> getFechaInicial [
^ fechaIncial 
]

{ #category : #'as yet unclassified' }
Alquiler >> getPosicionAmarre [
^ posicionAmarre 
]

{ #category : #'as yet unclassified' }
Alquiler >> inicializarConBarco: unBarco cliente: unCliente posicion: unaPosicion fechaI: unaFecha fechaF: unaFechaF valor: unValor [
	barco := unBarco.
	cliente := unCliente.
	posicionAmarre := unaPosicion.
	fechaIncial := unaFecha.
	fechaFinal := unaFechaF.
	valor := unValor
]

{ #category : #'as yet unclassified' }
Alquiler >> setBarco: unBarco [
barco := unBarco
]

{ #category : #'as yet unclassified' }
Alquiler >> setCliente: unCliente [
cliente := unCliente 
]

{ #category : #'as yet unclassified' }
Alquiler >> setFechaFinal: unaFecha [
fechaFinal := unaFecha 
]

{ #category : #initialization }
Alquiler >> setFechaInicial: unaFecha [
fechaIncial := unaFecha
]

{ #category : #'as yet unclassified' }
Alquiler >> setPosicionAmarre: unaPosicion [
posicionAmarre := unaPosicion
]
