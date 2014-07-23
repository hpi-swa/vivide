dropping
dropEditor: anEditor event: evt

	| area |
	area := self dropAreaForEvent: evt.
	
	area == #full
		ifTrue: [self editorDropped: anEditor].

	area == #left
		ifTrue: [self editorDroppedInFrontOfMe: anEditor].
	
	area == #right
		ifTrue: [self editorDroppedAfterMe: anEditor].
		
	area == #between ifTrue: [
		| dtr |
		dtr := self dropRectangleForEvent: evt.
		(self submorphs
			detect: [:m | m bounds containsRect: dtr]
			ifNone: []) ifNotNil: [:m |
				dtr topLeft = m topLeft
					ifTrue: [self addMorph: anEditor inFrontOf: m].
				dtr bottomRight = m bottomRight
					ifTrue: [self addMorph: anEditor after: m]]].