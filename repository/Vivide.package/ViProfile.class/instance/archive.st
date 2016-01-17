accessing
archive

	^ archive ifNil: [
		self
			createArchiveNamed: (self label asString ifEmpty: ['unnamed'])
			inCategory: #VivideTemporary]