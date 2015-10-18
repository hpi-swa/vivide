hints - input kind
inputKind

	^ inputKind ifNil: [self updateInputKind. inputKind]