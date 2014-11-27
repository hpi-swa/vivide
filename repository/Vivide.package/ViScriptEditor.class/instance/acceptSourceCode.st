actions - editing
acceptSourceCode

	| code |
	shouldPropose ifTrue: [self proposeScriptTemplate].
	
	code := edit theText asString withBlanksTrimmed.
	
	[code endsWith: '.'] whileTrue: [
		"No trailing points for intermediate code blocks."
		code := code allButLast].

	self propertiesVisible
		ifFalse: [
			"Check for correct enclosing brackets if not outermost snippet."	
			((code beginsWith: '[') and: [code endsWith: ']'])
				"Auto bracketing."
				ifFalse: [code := '[{1}]' format: {code}]]
		ifTrue: [
			"Restore properties if deleted."
			(code endsWith: '}') ifFalse: [
				code := code, String cr, '-> ', self propertiesToString]	
			].

	"Store new code and adjust script pointer."	
	script := (self script first: self scriptPointer first -1), code, (self script last: self script size - self scriptPointer last).
	scriptPointer := self scriptPointer first to: self scriptPointer first + code size - 1.
	(RBParser parseExpression: script) in: [:n |
		self
			updateMapFor: n;
			updateMapIndex: n].
	
	"Update visuals if code was fixed automatically."
	code size ~= edit theText size
		ifTrue: [edit theText: code].

	"Store changes in object."
	self updateObject.

	self updateUi.

	ViLoggingService trigger: {
		#message -> 'Script modified.'.
		#script -> script copy}.