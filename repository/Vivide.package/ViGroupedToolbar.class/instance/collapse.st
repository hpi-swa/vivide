geometry
collapse

	secondaryList owner ifNil: [^ self].
	
	self orientation == #leftToRight
		ifTrue: [secondaryList delete.]
		ifFalse: [
			| oldRight |
			oldRight := self right.
			secondaryList delete.
			self
				fullBounds;
				right: oldRight.].
	
	