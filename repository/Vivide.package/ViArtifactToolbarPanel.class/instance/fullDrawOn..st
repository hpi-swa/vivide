drawing
fullDrawOn: aCanvas

	self alpha == 0.0
		ifTrue: [^ self].

	^ super fullDrawOn: ((self fadeEnabled and: [self alpha < 0.9])
		ifTrue: [(AnimAlphaBlendingCanvas on: aCanvas) alpha: self alpha]
		ifFalse: [aCanvas])