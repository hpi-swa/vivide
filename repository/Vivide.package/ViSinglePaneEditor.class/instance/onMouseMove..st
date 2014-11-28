dropping
onMouseMove: evt

	evt hand submorphs ifNotEmpty: [:morphs |
		(self wantsDroppedMorph: morphs first event: evt)
			ifTrue: [self setDrawFlag: #dropPane]   
		]