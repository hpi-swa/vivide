serialization
archive

	^ archive ifNil: [
		archive := ViConverterForClassArchive
			createArchiveNamed: ((label isNil or: [self label isEmpty]) ifTrue: [self id asString])
			inCategory: #VivideTemporary]