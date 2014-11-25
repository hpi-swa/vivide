as yet unclassified
onMouseMove: evt

	evt hand submorphs ifNotEmpty: [:morphs |
		(self wantsDroppedMorph: morphs first event: evt)
			ifTrue: [
				self setProperty: #dropPane toValue: true.
				self redrawLater.]   
		]