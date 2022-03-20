Class {
	#name : #Pinacoteca,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'ciudad',
		'direccion',
		'colCuadros'
	],
	#category : #TP3
}

{ #category : #Observadores }
Pinacoteca >> getNombre [
^ nombre.
]

{ #category : #'as yet unclassified' }
Pinacoteca >> inicializarNombre: unNombre 	ciudad: unaCiudad direccion: unaDireccion cuadros: unaColeccion [
	nombre := unNombre.
	ciudad := unaCiudad.
	direccion := unaDireccion.
	colCuadros := unaColeccion 
]

{ #category : #'as yet unclassified' }
Pinacoteca >> tieneCuadros: colCuadrosAutor [
	| tiene |
	tiene := colCuadros
		anySatisfy: [ :cuadro | 
			colCuadrosAutor
				anySatisfy: [ :cuadroAutor | cuadro equals: cuadroAutor ] ].
	^ tiene
]
