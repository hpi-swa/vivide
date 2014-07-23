*vivide-queries
asQuery

	self flag: #closures. "mt: Consider closured objects."

	^ self decompile decompileString in: [:sourceCode |
		self numArgs == 0
			ifTrue: [ViQueryStep transform: sourceCode]
			ifFalse: [(sourceCode includesSubstring: '#text' caseSensitive: false)
				ifTrue: [ViQueryStep property: sourceCode]
				ifFalse: [ViQueryStep collect: sourceCode]]]