meta-scripts
allMetaReferences

	self flag: #metaScript.
	^ Array streamContents: [:strm |
		self allExtractionStepsDo: [:step |
			step isMeta ifTrue: [
				step metaReference ifNotNil: [:ref |
					strm nextPut: ref]]]]