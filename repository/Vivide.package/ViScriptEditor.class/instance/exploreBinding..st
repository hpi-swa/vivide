actions - debugging
exploreBinding: aName

	self updateBindings.
	(self bindings at: aName ifAbsent: []) in: [:object |
		object isList ifTrue: [{object} explore] ifFalse: [object explore]].