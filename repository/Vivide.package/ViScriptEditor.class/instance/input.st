accessing
input

	^ input ifNil: [self updateInputKind. input]