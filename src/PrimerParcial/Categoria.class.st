Class {
	#name : #Categoria,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'estado'
	],
	#category : #PrimerParcial
}

{ #category : #'as yet unclassified' }
Categoria class >> crearNombre: unNombre estado: unEstado [
|unaCategoria|
unaCategoria := self new.
unaCategoria inicializarNombre: unNombre estado: unEstado.
^ unaCategoria


]

{ #category : #Observadores }
Categoria >> getEstado [
^estado
]

{ #category : #Observadores }
Categoria >> getNombre [
^nombre
]

{ #category : #Inicializadores }
Categoria >> inicializarNombre: unNombre estado: unEstado [
nombre := unNombre.
estado := unEstado.
]

{ #category : #Aplicacion }
Categoria >> obtenerItems: unNegocio [
	^ unNegocio getItemsPropios: nombre
]

{ #category : #Modificadores }
Categoria >> setEstado: unEstado [
estado := unEstado.
]

{ #category : #Modificadores }
Categoria >> setNombre: unNombre [
nombre := unNombre
]
