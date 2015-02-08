geometry
expand

	secondaryList owner ifNotNil: [^ self].
	
	self editor ifNotNil: [:ed |
		self refreshFromEditor: ed].
	
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