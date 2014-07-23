operations
doTag: aTag

	^ aTag description
		ifNotNil: [:d | d asString withoutLineEndings]
		ifNil: ['-']