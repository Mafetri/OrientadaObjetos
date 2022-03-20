Class {
	#name : #QRMagic,
	#superclass : #Object,
	#instVars : [
		'colCategorias',
		'colItems'
	],
	#category : #PrimerParcial
}

{ #category : #'as yet unclassified' }
QRMagic class >> crearCategorias: categorias items: items [
|unNegocio|
unNegocio := self new.
unNegocio inicializarCategorias: categorias items: items.
^ unNegocio
]

{ #category : #Observadores }
QRMagic >> getCategorias [
	^ colCategorias
]

{ #category : #Observadores }
QRMagic >> getItems [
	^ colItems
]

{ #category : #Aplicacion }
QRMagic >> getItemsPropios: unNombre [
	| listaItems |
	listaItems := colItems
		select: [ :unItem | unItem existeEnCategoria: unNombre ].
	^ listaItems
]

{ #category : #Inicializadores }
QRMagic >> inicializarCategorias: categorias items: items [
	colCategorias := categorias.
	colItems := items
]

{ #category : #Modificadores }
QRMagic >> setCategorias: categorias [
	colCategorias := categorias
]

{ #category : #Modificadores }
QRMagic >> setItems: items [
	colItems := items
]
