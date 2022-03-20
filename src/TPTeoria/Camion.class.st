Class {
	#name : #Camion,
	#superclass : #Vehiculo,
	#instVars : [
		'tara',
		'tipoCarga'
	],
	#category : #TPTeoria
}

{ #category : #'as yet unclassified' }
Camion class >> crearPatente: unaPantente km: kilometros marca: unaMarca tara: unaTara tipo: unTipo [
	| camioncito |
	camioncito := self new.
	camioncito
		inicializarPatente: unaPantente
		km: kilometros
		marca: unaMarca
		tara: unaTara
		tipo: unTipo.
	^ camioncito
]

{ #category : #'as yet unclassified' }
Camion >> getKilometraje [
^ kilometraje.
]

{ #category : #'as yet unclassified' }
Camion >> getPatente [
^ patente
]

{ #category : #'as yet unclassified' }
Camion >> inicializarPatente: unaPantente km: kilometros marca: unaMarca tara: unaTara tipo: unTipo [
	patente := unaPantente.
	kilometraje := kilometros.
	marca := unaMarca.
	tara := unaTara.
	tipoCarga := unTipo.
	
]

{ #category : #accessing }
Camion >> tara [
	^ tara
]

{ #category : #accessing }
Camion >> tara: anObject [
	tara := anObject
]

{ #category : #accessing }
Camion >> tipoCarga [
	^ tipoCarga
]

{ #category : #accessing }
Camion >> tipoCarga: anObject [
	tipoCarga := anObject
]
