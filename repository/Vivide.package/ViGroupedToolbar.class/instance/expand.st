geometry
expand

	secondaryList owner ifNotNil: [^ self].
	
	self ensureVisibility.
	
	self orientation == #leftToRight
		ifTrue: [self addMorphBack: secondaryList]
		ifFalse: [
			| oldRight |
			oldRight := self right.
			self
				addMorphFront: secondaryList;
				fullBounds;
				right: oldRight.].