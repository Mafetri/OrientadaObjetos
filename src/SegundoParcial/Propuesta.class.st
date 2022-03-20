Class {
	#name : #Propuesta,
	#superclass : #Object,
	#instVars : [
		'postulante',
		'solicitud',
		'esValida'
	],
	#category : #SegundoParcial
}

{ #category : #'as yet unclassified' }
Propuesta >> getPostulante [
^postulante .
]

{ #category : #'as yet unclassified' }
Propuesta >> getSolicitud [
^solicitud
]

{ #category : #'as yet unclassified' }
Propuesta >> inicializarPostulante: unPostulante solicitud: unaSolicitud esValida: boolean [ 
postulante := unPostulante.
solicitud := unaSolicitud .
esValida:= boolean .
]
