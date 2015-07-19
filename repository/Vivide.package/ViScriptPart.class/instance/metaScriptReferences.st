as yet unclassified
metaScriptReferences

	self assert: self isMeta.
	
	^ ((Dictionary newFrom: (self process: #(1)) first) at: #scripts ifAbsent: [#()])
		collect: [:id | self organization stepById: id]
		thenSelect: [:scriptOrNil | scriptOrNil notNil] 