Class {
	#name : #Solicitud,
	#superclass : #Object,
	#instVars : [
		'numeroID',
		'año',
		'descripcion',
		'pendiente'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
Solicitud >> inicializarNumeroID: numero año: unAño descripcion: unaDescripcion pendiente: boolean [.
numeroID := numero.
 año := unAño .
descripcion := unaDescripcion.
pendiente := boolean.
]
