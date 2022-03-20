Class {
	#name : #Velero,
	#superclass : #Barco,
	#instVars : [
		'cantMastiles'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Velero class >> crearValor: unValor matricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio mastiles: num [
	| unBote |
	unBote := self new.
	unBote inicializarMatricula: unaMatricula eslora: unaEslora  anioFabricacion: unAnio mastiles: num.
	valorBase := unValor.
	^ unBote
]

{ #category : #'as yet unclassified' }
Velero >> getModulo [
	^ super getModulo + cantMastiles 
]

{ #category : #'as yet unclassified' }
Velero >> inicializarMatricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio mastiles: num [
	matricula := unaMatricula.
	eslora := unaEslora.
	anioFabricacion := unAnio.
	cantMastiles := num
	
]
