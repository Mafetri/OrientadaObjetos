Class {
	#name : #Electrodomestico,
	#superclass : #Object,
	#instVars : [
		'precioBase',
		'color',
		'consumo',
		'peso',
		'descripcion',
		'marca'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Electrodomestico class >> crearPrecio: unPrecio peso: unPeso letra: unaLetra [
	| unElec |
	unElec := self new.
	unElec inicializarPrecioBase: unPrecio color: 'Blanco' consumo: unaLetra peso: unPeso descripcion: '' marca: ''.
	^ unElec.
]

{ #category : #'as yet unclassified' }
Electrodomestico >> adicionales [
	| adicional |
	adicional := 0.
	consumo = 'A'
		ifTrue: [ adicional := adicional + 300 ].
	consumo = 'B'
		ifTrue: [ adicional := adicional + 230 ].
	consumo = 'C'
		ifTrue: [ adicional := adicional + 250 ].
	consumo = 'D'
		ifTrue: [ adicional := adicional + 120 ].
	consumo = 'E'
		ifTrue: [ adicional := adicional + 90 ].
	consumo = 'F'
		ifTrue: [ adicional := adicional + 70 ].
	(0 < peso and: peso < 19)
		ifTrue: [ adicional := adicional + 150 ].
	(20 < peso and: peso < 49)
		ifTrue: [ adicional := adicional + 350 ].
	(50 < peso and: peso < 79)
		ifTrue: [ adicional := adicional + 480 ].
	80 < peso
		ifTrue: [ adicional := adicional + 650 ].
	^ adicional
]

{ #category : #'as yet unclassified' }
Electrodomestico >> adicionales: unPeso consumo: unaLetra [
	| adicional |
	adicional := 0.
	unaLetra = 'A'
		ifTrue: [ adicional := adicional + 300 ].
	unaLetra = 'B'
		ifTrue: [ adicional := adicional + 230 ].
	unaLetra = 'C'
		ifTrue: [ adicional := adicional + 250 ].
	unaLetra = 'D'
		ifTrue: [ adicional := adicional + 120 ].
	unaLetra = 'E'
		ifTrue: [ adicional := adicional + 90 ].
	unaLetra = 'F'
		ifTrue: [ adicional := adicional + 70 ].
	(0 < unPeso and: unPeso < 19)
		ifTrue: [ adicional := adicional + 150 ].
	(20 < unPeso and: unPeso < 49)
		ifTrue: [ adicional := adicional + 350 ].
	(50 < unPeso and: unPeso < 79)
		ifTrue: [ adicional := adicional + 480 ].
	80 < unPeso
		ifTrue: [ adicional := adicional + 650 ].
	^ adicional
]

{ #category : #'as yet unclassified' }
Electrodomestico >> calcularValor [
^ self adicionales + precioBase .
]

{ #category : #'as yet unclassified' }
Electrodomestico >> inicializarPrecioBase: unPrecio color: unColor consumo: unConsumo peso:  unPeso descripcion: unaDescripcion marca: unaMarca [
	precioBase := unPrecio.
	color := unColor.
	consumo := unConsumo.
	peso := unPeso.
	descripcion := unaDescripcion .
	marca := unaMarca 
]
