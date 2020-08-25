meta-scripts
metaOutput

	self flag: #metaScript.
	self assert: self isMeta.
	^ (Dictionary newFrom: (self process: #(1)) first) at: #out