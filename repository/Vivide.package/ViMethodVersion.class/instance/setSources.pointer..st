initializing
setSources: aSourceFileArray pointer: aSourcePointer
	sources := aSourceFileArray collect: [:file | file ifNotNil: [file readOnlyCopy]].
	pointer := aSourcePointer.
	self parseSource.