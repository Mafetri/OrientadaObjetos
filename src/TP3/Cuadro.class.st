Class {
	#name : #Cuadro,
	#superclass : #Object,
	#instVars : [
		'codigo',
		'nombre',
		'dimensiones',
		'fecha',
		'tecnica',
		'genero'
	],
	#category : #TP3
}

{ #category : #'as yet unclassified' }
Cuadro >> equals: unCuadro [
^ codigo == unCuadro getCodigo
]

{ #category : #'as yet unclassified' }
Cuadro >> getCodigo [
^codigo
]

{ #category : #'as yet unclassified' }
Cuadro >> inicializarCodigo: unCodigo nombre: unNombre dimensiones: medidas fecha: unaFecha tecnica: unaTecnica genero: unGenero [
codigo := unCodigo.
nombre := unNombre.
dimensiones := medidas.
fecha := unaFecha .
tecnica := unaTecnica.
genero := unGenero
]
