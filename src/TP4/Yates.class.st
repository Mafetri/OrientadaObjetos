Class {
	#name : #Yates,
	#superclass : #Barco,
	#instVars : [
		'cv',
		'camarotes'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Yates class >> crearValor: unValor matricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio cv: unNum camarotes: num [
	| unBote |
	unBote := self new.
	unBote inicializarMatricula: unaMatricula eslora: unaEslora  anioFabricacion: unAnio cv: unNum camarotes: num.
	valorBase := unValor.
	^ unBote
]

{ #category : #'as yet unclassified' }
Yates >> getModulo [
	^ super getModulo + cv + camarotes 
]

{ #category : #'as yet unclassified' }
Yates >> inicializarMatricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio cv: unCv camarotes: cant [
	matricula := unaMatricula.
	eslora := unaEslora.
	anioFabricacion := unAnio.
	cv := unCv.
	camarotes := cant
]
