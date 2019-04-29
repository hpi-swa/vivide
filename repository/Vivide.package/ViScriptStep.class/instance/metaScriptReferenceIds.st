meta-scripts
metaScriptReferenceIds

	self assert: self isMeta.
	
	^ (Dictionary newFrom: (self process: #(1)) first) at: #scripts ifAbsent: [#()]