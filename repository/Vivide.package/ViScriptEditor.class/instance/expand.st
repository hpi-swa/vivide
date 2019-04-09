geometry - actions
expand

	| xh |
	super expand.
	
	xh := Preferences standardButtonFont height.
	
	self layoutInset: (0@0 corner: 0@ ((self isScriptEndOfLevel and: [self isScriptInaccessible not]) ifTrue: [xh] ifFalse: [0])).
