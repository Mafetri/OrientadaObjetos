Class {
	#name : #Reserva,
	#superclass : #Object,
	#instVars : [
		'cliente',
		'colElectrodomesticos',
		'fecha',
		'fechaEntrega',
		'monto'
	],
	#category : #TP4
}

{ #category : #'as yet unclassified' }
Reserva class >> crearCliente: unCliente electrodomesticos: col fecha: unaFecha fechaEntrega: fechaEnt monto: unMonto [
|reserva|
reserva := self new.
reserva inicializarCliente: unCliente electrodomesticos: col fecha: unaFecha fechaEntrega: fechaEnt monto: unMonto.
^reserva
]

{ #category : #'as yet unclassified' }
Reserva class >> crearReserva: unCliente electrodomesticos: col [
	| reserva montoTotal |
	montoTotal := 0.
	col
		do: [ :elec | montoTotal := montoTotal + elec calcularValor ].
	reserva := self new.
	reserva
		inicializarCliente: unCliente
		electrodomesticos: col
		fecha: Date today
		fechaEntrega: nil
		monto: montoTotal.
	^ reserva
]

{ #category : #Observadores }
Reserva >> getNombre [
	^ cliente getNombre , monto asString
]

{ #category : #'as yet unclassified' }
Reserva >> inicializarCliente: unCliente electrodomesticos: col fecha: unaFecha fechaEntrega: fechaEnt monto: unMonto [
cliente:= unCliente.
 colElectrodomesticos := col. fecha := unaFecha. fechaEntrega:= fechaEnt. monto := unMonto
]
