Class {
	#name : #Item,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion',
		'precio',
		'colCategorias'
	],
	#category : #PrimerParcial
}

{ #category : #'as yet unclassified' }
Item class >> crearNombre: unNombre descripcion: unaDescripcion precio: unPrecio categorias: coleccionCat [
	| unItem |
	unItem := self new.
	unItem
		inicializarNombre: unNombre
		descripcion: unaDescripcion
		precio: unPrecio
		categorias: coleccionCat.
	^ unItem
]

{ #category : #Aplicacion }
Item >> existeEnCategoria: unNombre [
|existe|
existe := colCategorias anySatisfy: [ :unaCategoria | unaCategoria getNombre == unNombre ].
^existe
]

{ #category : #Observadores }
Item >> getCategorias [
^colCategorias 
]

{ #category : #Observadores }
Item >> getDescripcion [
	^ descripcion 
]

{ #category : #Observadores }
Item >> getNombre [
^ nombre

]

{ #category : #Observadores }
Item >> getPrecio [
^ precio
]

{ #category : #Inicializadores }
Item >> inicializarNombre: unNombre descripcion: unaDescripcion precio: unPrecio categorias: coleccionCat [
nombre := unNombre .
descripcion := unaDescripcion. 
precio := unPrecio.
colCategorias := coleccionCat.

]

{ #category : #Modificadores }
Item >> setCategorias: categorias [
colCategorias := categorias
]

{ #category : #Modificadores }
Item >> setDescripcion: unaDescripcion [ 
descripcion := unaDescripcion 
]

{ #category : #Modificadores }
Item >> setNombre: unNombre [
nombre := unNombre 
]

{ #category : #Modificadores }
Item >> setPrecio: unPrecio [
precio := unPrecio
]
