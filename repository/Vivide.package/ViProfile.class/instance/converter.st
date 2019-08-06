serialization
converter
	"Returns the default converter for exporting Vivide objects for backup, sharing, and version control."

	^ converter ifNil: [
		converter := ViConverterForClassArchive
			fromProfile: self
			intoClass: (ViConverterForClassArchive
				createArchiveNamed: ((label isNil or: [self label isEmpty]) ifTrue: [self id asString] ifFalse: [label]))]