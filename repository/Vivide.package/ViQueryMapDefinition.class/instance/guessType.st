accessing - private
guessType

	self block method literalsDo: [:literal |
		((Collection organization listAtCategoryNamed: #enumerating)
			includes: literal) ifTrue: [self mapType: #all. ^ self]].