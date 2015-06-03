as yet unclassified
metaOutput

	self assert: self isMeta.
	^ (Dictionary newFrom: (self process: #(1)) first) at: #out