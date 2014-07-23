actions
classify: aMethodReference

	aMethodReference actualClass ~~ self theClass ifTrue: [^ false].

	self theClass organization
		classify: aMethodReference selector
		under: self protocolname.
		
	^ true