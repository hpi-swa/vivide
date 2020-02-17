comparing
= c

	super = c ifTrue: [^ true].
	self species = c species ifFalse: [^ false].
	^ self source = c source and: [self target = c target]