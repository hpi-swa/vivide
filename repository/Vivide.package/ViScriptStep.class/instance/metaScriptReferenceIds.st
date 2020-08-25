meta-scripts
metaScriptReferenceIds

	self assert: self isMeta.
	self flag: #metaScript.
		
	^ (Dictionary newFrom: (self process: #(1)) first) at: #scripts ifAbsent: [#()]