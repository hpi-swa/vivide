events-processing
rejectsEvent: anEvent

	^ ((((self bounds containsPoint: anEvent position) not
		or: [self topPanel bounds containsPoint: anEvent position])
		or: [self leftPanel bounds containsPoint: anEvent position])
		or: [self rightPanel bounds containsPoint: anEvent position])
			ifTrue: [false]
			ifFalse: [(anEvent isMouse and: [anEvent isMouseMove])
				ifTrue: [self updateAlpha: anEvent].
				true]	
