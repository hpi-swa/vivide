as yet unclassified
metaReference

	self assert: self isMeta.
	
	^ self organization
		stepById: ((Dictionary newFrom: (self process: #(1)) first) at: #current)