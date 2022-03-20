Class {
	#name : #Barco,
	#superclass : #Object,
	#instVars : [
		'matricula',
		'eslora',
		'anioFabricacion'
	],
	#classInstVars : [
		'valorBase'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Barco class >> crearValorBase: unValor matricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio [
	| unBarco |
	unBarco := self new.
	unBarco
		inicializarMatricula: unaMatricula
		eslora: unaEslora
		anioFabricacion: unAnio.
	valorBase := unValor.
	^ unBarco
]

{ #category : #'as yet unclassified' }
Barco class >> getValorBase [
^valorBase.
]

{ #category : #initialization }
Barco class >> setValorBase: unValor [
valorBase := unValor 
]

{ #category : #'as yet unclassified' }
Barco >> calcularValorAlquiler: cantDiasAlquilados [
	^ cantDiasAlquilados * self getModulo + self class getValorBase
]

{ #category : #'as yet unclassified' }
Barco >> getEslora [
^ eslora
]

{ #category : #'as yet unclassified' }
Barco >> getMatricula [
^ matricula
]

{ #category : #'as yet unclassified' }
Barco >> getModulo [
^ eslora*10
]

{ #category : #'as yet unclassified' }
Barco >> inicializarMatricula: unaMatricula eslora: unaEslora anioFabricacion: unAnio [
	matricula := unaMatricula.
	eslora := unaEslora.
	anioFabricacion := unAnio.
]

{ #category : #'as yet unclassified' }
Barco >> setAnioFabricacion: unAnio [
anioFabricacion := unAnio
]

{ #category : #initialization }
Barco >> setEslora: unaEslora [
eslora := unaEslora

]

{ #category : #initialization }
Barco >> setMatricula: unaMatricula [
matricula := unaMatricula 
]
