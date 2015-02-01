as yet unclassified
metaReferences

	self assert: self isMeta.
	
	^ self allPropertySteps collect: [:step |
		self organization stepById: ((Dictionary newFrom: (step process: #(1)) first) at: #current)] thenSelect: [:referencedStep | referencedStep notNil]