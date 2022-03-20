Class {
	#name : #Auto,
	#superclass : #Vehiculo,
	#instVars : [
		'descapotable',
		'tipo'
	],
	#category : #TPTeoria
}

{ #category : #'as yet unclassified' }
Auto class >> crearPatente: unaPantente km: kilometros marca: unaMarca descapotable: esDesca tipo: unTipo [
	|autito|
	autito := self new.
	autito inicializarPatente: unaPantente km: kilometros marca: unaMarca descapotable: esDesca tipo: unTipo.
	^ autito.

]

{ #category : #accessing }
Auto >> descapotable [
	^ descapotable
]

{ #category : #accessing }
Auto >> descapotable: anObject [
	descapotable := anObject
]

{ #category : #'as yet unclassified' }
Auto >> getKilometraje [
^ kilometraje .
]

{ #category : #'as yet unclassified' }
Auto >> getPatente [
^ patente
]

{ #category : #initialization }
Auto >> inicializarPatente: unaPantente km: kilometros marca: unaMarca descapotable: esDesca tipo: unTipo [
patente := unaPantente .
kilometraje := kilometros.
marca := unaMarca.
descapotable := esDesca.
tipo := unTipo.

]

{ #category : #initialization }
Auto >> setKilometraje: km [
kilometraje := km
]

{ #category : #accessing }
Auto >> tipo [
	^ tipo
]

{ #category : #accessing }
Auto >> tipo: anObject [
	tipo := anObject
]
