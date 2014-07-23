accessing
limit: anInteger
	"Set the maximum number of objects that will be referenced in this history."
	
	anInteger = self limit ifTrue: [^ self].
	limit := anInteger.
	self limitChanged.
	
	self ensureLimit.