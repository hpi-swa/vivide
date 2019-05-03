accessing
archive

	^ archive ifNil: [
		self
			createArchiveNamed: ((label isNil or: [self label isEmpty]) ifTrue: [self id asString])
			inCategory: #VivideTemporary]