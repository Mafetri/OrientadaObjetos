Class {
	#name : #GestorVehiculos,
	#superclass : #Object,
	#instVars : [
		'colVehiculos'
	],
	#category : #TPTeoria
}

{ #category : #'as yet unclassified' }
GestorVehiculos >> inicializarVehiculos: col [ 
colVehiculos := col
]

{ #category : #'as yet unclassified' }
GestorVehiculos >> obtenerDatosVehiculos [
	^ colVehiculos
		collect: [ :unVehiculo | 
			unVehiculo getPatente asString , ' '
				, unVehiculo getKilometraje asString ]
]
