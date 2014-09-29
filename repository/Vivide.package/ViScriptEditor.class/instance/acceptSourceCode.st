as yet unclassified
acceptSourceCode

	| code newPointer |
	self object definition sourceCode
		ifEmpty: [self proposeScriptTemplate].
	
	code := edit theText asString withBlanksTrimmed.
		
	"Check for correct enclosing brackets if not outermost snippet."
	self scriptPointer ~= (1 to: self script size) ifTrue: [
		(code endsWith: '.')
			"No trailing points for intermediate code blocks."
			ifTrue: [code := code allButLast].
		((code beginsWith: '[') and: [code endsWith: ']'])
			"Auto bracketing."
			ifFalse: [code := '[{1}]' format: {code}].		
		].

	newPointer := self scriptPointer first to: self scriptPointer first + code size - 1.
	
	script := (self script first: self scriptPointer first -1), code, (self script last: self script size - self scriptPointer last).
	scriptPointer := newPointer.
	
	"Update visuals if code was fixed automatically."
	code size ~= edit theText size
		ifTrue: [edit theText: code].

	"Store changes in object."
	self updateObject.	