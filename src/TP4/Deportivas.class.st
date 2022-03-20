Class {
	#name : #Deportivas,
	#superclass : #Barco,
	#instVars : [
		'cv'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Deportivas class >> crearValor: unValor matricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio cv: unCv [
	| unBote |
	unBote := self new.
	unBote
		inicializarMatricula: unaMatricula
		eslora: unaEslora
		anioFabricacion: unAnio
		cv: unCv.
	valorBase := unValor.
	^ unBote
]

{ #category : #'as yet unclassified' }
Deportivas >> getModulo [
^ super getModulo + cv
]

{ #category : #'as yet unclassified' }
Deportivas >> getValorBase [
	^ self class getValorBase
]

{ #category : #'as yet unclassified' }
Deportivas >> inicializarMatricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio cv: unCv [
	matricula := unaMatricula.
	eslora := unaEslora.
	anioFabricacion := unAnio..
	cv := unCv 
]
