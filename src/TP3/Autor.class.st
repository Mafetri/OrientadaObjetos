Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'ciudadNacimiento',
		'paisNacimiento',
		'fechaNacimiento',
		'colCuadros'
	],
	#category : #TP3
}

{ #category : #'as yet unclassified' }
Autor >> getColCuadros [
^ colCuadros 
]

{ #category : #'as yet unclassified' }
Autor >> inicializarNombre: unNombre apellido: unApellido ciudad: unLugar pais: unPais fechaNacimiento: unaFecha cuadros: coleccionCuadros [
	nombre := unNombre.
	apellido := unApellido.
	ciudadNacimiento := unLugar.
	paisNacimiento := unPais.
	fechaNacimiento := unaFecha.
	colCuadros := coleccionCuadros
]

{ #category : #'as yet unclassified' }
Autor >> iniciarlizarNombre: unNombre apellido: unApellido ciudad: unLugar pais: unPais fechaNacimiento: unaFecha cuadros: coleccionCuadros [

nombre := unNombre.
apellido := unApellido.
ciudadNacimiento := unLugar.
paisNacimiento := unPais.
fechaNacimiento := unaFecha.
colCuadros := coleccionCuadros 


]
