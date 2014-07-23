accessing - header
header

	^ self isFloating
		ifTrue: [self owner "system window"]
		ifFalse: [self ui panel submorphs first]