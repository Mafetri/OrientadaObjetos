Class {
	#name : #Lavarropa,
	#superclass : #Electrodomestico,
	#instVars : [
		'capacidad',
		'tipo',
		'sistema'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Lavarropa class >> crearDescripcion: unaDescripcion marca: unaMarca [
	| unLava |
	unLava := self new.
	unLava
		inicializarPrecioBase: 300
		color: 'Blanco'
		consumo: 'F'
		peso: 5
		descripcion: unaDescripcion
		marca: unaMarca
		capacidad: 5
		tipo: 'Superior'
		sistema: 'Europeo'.
	^ unLava
]

{ #category : #'as yet unclassified' }
Lavarropa class >> crearPrecioBase: unPrecio color: unColor consumo: unConsumo peso: unPeso descripcion: unaDescripcion marca: unaMarca capacidad: unaCapacidad tipo: unTipo sistema: unSistema [
|unLava|
unLava := self new.
unLava inicializarPrecioBase: unPrecio color: unColor consumo: unConsumo peso: unPeso descripcion: unaDescripcion marca: unaMarca capacidad: unaCapacidad tipo: unTipo sistema: unSistema.
^unLava
]

{ #category : #'as yet unclassified' }
Lavarropa >> calcularValor [
	| valor |
	valor := super calcularValor.
	capacidad >= 30
		ifTrue: [ valor := valor + 350 ].
	^ valor
]

{ #category : #'as yet unclassified' }
Lavarropa >> inicializarPrecioBase: unPrecio color: unColor consumo: unConsumo peso: unPeso descripcion: unaDescripcion marca: unaMarca capacidad: unaCapacidad tipo: unTipo sistema: unSistema [
	precioBase := unPrecio.
	color := unColor.
	consumo := unConsumo.
	peso := unPeso.
	descripcion := unaDescripcion.
	marca := unaMarca.
	capacidad := unaCapacidad.
	tipo := unTipo.
	sistema := unSistema.
]
