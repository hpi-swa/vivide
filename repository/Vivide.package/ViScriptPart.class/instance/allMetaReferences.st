meta-scripts
allMetaReferences

	^ Array streamContents: [:strm |
		self allExtractionStepsDo: [:step |
			step isMeta ifTrue: [
				step metaReference ifNotNil: [:ref |
					strm nextPut: ref]]]]