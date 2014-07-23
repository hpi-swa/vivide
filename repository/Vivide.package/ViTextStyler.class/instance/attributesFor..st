private
attributesFor: aSymbol

	^ (((super attributesFor: aSymbol) ifNil: [#()]), 
		(self customTextAttributes at: aSymbol ifAbsent: [#()])) ifEmpty: []