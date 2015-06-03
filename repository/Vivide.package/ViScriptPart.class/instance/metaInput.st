as yet unclassified
metaInput

	self assert: self isMeta.
	^ (Dictionary newFrom: (self process: #(1)) first) at: #in