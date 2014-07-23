actions
toggleFullScreen

	| isFullScreen |
	isFullScreen := self owner == ActiveWorld.
	
	isFullScreen
		ifTrue: [self open owner bounds: (self valueOfProperty: #windowBounds)]
		ifFalse: [
			self setProperty: #windowBounds toValue: self owner bounds.
			self owner delete.
			self
				openInWorld;
				bounds: ActiveWorld bounds].