styling
hasBindingThatBeginsWith: aString 
	
	self bindings keysDo: [:each |
		(each beginsWith: aString) ifTrue: [^ true]].
	^ false