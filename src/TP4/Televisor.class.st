Class {
	#name : #Televisor,
	#superclass : #Electrodomestico,
	#instVars : [
		'tamaño',
		'resolucion',
		'cantPuertos',
		'smart'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Televisor class >> crearDescripcion: unaDescripcion  marca: unaMarca [
|tele|
tele := self new.
tele inicializarPrecioBase: 300 color: 'Blanco' consumo: 'F' peso: 5  descripcion: unaDescripcion  marca: unaMarca tamaño: 32 resolucion: 'HD 1366x768Px' cantPuertos: 1 smart: false.
^tele
]

{ #category : #'as yet unclassified' }
Televisor >> calcularValor [ 
|valor|
valor := super calcularValor.
(tamaño >= 46) ifTrue: [ valor := valor * 1.3 ].
(cantPuertos > 1) ifTrue: [ valor := valor + (cantPuertos * 100)].
^valor.

]

{ #category : #'as yet unclassified' }
Televisor >> inicializarPrecioBase: unPrecio color: unColor consumo: unConsumo peso: unPeso descripcion: unaDescripcion marca: unaMarca tamaño: unTamaño resolucion: unaResolucion cantPuertos: unaCant smart: logico [
	precioBase := unPrecio.
	color := unColor.
	consumo := unConsumo.
	peso := unPeso.
	descripcion := unaDescripcion.
	marca := unaMarca.
	tamaño := unTamaño .
	resolucion := unaResolucion.
	cantPuertos := unaCant.
	smart := logico.
]
