Class {
	#name : #EmpresaSolicitante,
	#superclass : #Empresa,
	#instVars : [
		'colSolicitudes'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
EmpresaSolicitante class >> crearDireccion: unaDireccion contacto: unContacto nombre: unNombre rubro: unRubro rango: unRango colSolicitudes: unaCol [
	| unaEmpresa |
	unaEmpresa := self new.
	unaEmpresa
		inicializarDireccion: unaDireccion
		contacto: unContacto
		nombre: unNombre
		rubro: unRubro
		rango: unRango
		colSolicitudes: unaCol.
	^ unaEmpresa
]

{ #category : #'as yet unclassified' }
EmpresaSolicitante >> existeSolicitud: unaSolicitud [
^colSolicitudes anySatisfy: [ :solicitud | unaSolicitud == solicitud ].
]

{ #category : #'as yet unclassified' }
EmpresaSolicitante >> inicializarDireccion: unaDireccion contacto: unContacto nombre: unNombre rubro: unRubro rango: unRango colSolicitudes: unaCol [
	self inicializarDireccion: unaDireccion contacto: unContacto nombre: unNombre rubro: unRubro rango: unRango.
	colSolicitudes := unaCol.
]
