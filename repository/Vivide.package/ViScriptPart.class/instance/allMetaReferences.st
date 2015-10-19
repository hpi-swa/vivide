meta-scripts
allMetaReferences

	^ Array streamContents: [:strm |
		self allPropertyStepsDo: [:step |
			step isMeta ifTrue: [
				step metaReference ifNotNil: [:ref |
					strm nextPut: ref]]]]