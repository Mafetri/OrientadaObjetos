Class {
	#name : #GestorEmpleos,
	#superclass : #Object,
	#instVars : [
		'colPropuestas',
		'colEmpresasSolicitantes',
		'colPostulantes'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
GestorEmpleos >> fraudulentas [
	| colFraudulentas |
	colFraudulentas := OrderedCollection new.
	colPropuestas
		do: [ :propuesta | 
			colEmpresasSolicitantes
				do: [ :empresaSolicitante | 
					propuesta getPostulante == empresaSolicitante
						ifTrue: [ (empresaSolicitante existeSolicitud: propuesta getSolicitud)
								ifTrue: [ colFraudulentas add: empresaSolicitante ] ] ] ].
	^ colFraudulentas
]

{ #category : #'as yet unclassified' }
GestorEmpleos >> inicializarColPropuestas: unaColProp colEmpresasSolicitantes: unaColEmpresas colPostulantes: unaColPost [
colPropuestas := unaColProp.
 colEmpresasSolicitantes:= unaColEmpresas.
 colPostulantes := unaColPost.

]
