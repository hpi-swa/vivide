meta-scripts
metaReferenceId

	self assert: self isMeta.
	self flag: #metaScript.
	
	^ (Dictionary newFrom: (self process: #(1)) first) at: #current