tests - multiple
test16InputKindOverride

	script setProperty: #inputKind toValue: {Number}.
	self setUpWindow: #(1 2 3).
	self assert: (editor inputKind hasEqualElements: {Number}).