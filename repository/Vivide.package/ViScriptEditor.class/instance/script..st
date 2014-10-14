accessing
script: aString
	"Reset the whole script to be edited."

	script := aString.
	scriptPointer := nil. "Reset"
	(RBParser parseExpression: script) in: [:n |
		self
			updateMapFor: n;
			updateMapIndex: n].   
	self updateSourceCode.