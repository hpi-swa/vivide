tests - single
test13UnacceptedButChangedProperties
	"If the user has unaccepted changes but does not *see* the properties, those can be updated."
			
	editor visibleSourceCode: '[:num | "... type here ..." ]'.
	editor selectBlockStatements.
	self type: 'num + num' in: editor.

	self
		assert: editor hasUnacceptedChanges;
		deny: editor areScriptPropertiesVisible;
		assert: editor scriptScriptProperties isEmpty.

	"From somewhere, the script's properties change."
	script setProperty: #color toValue: #yellow.
	self
		assert: editor hasUnacceptedChanges;
		deny: editor areScriptPropertiesVisible;
		assert: '[:num | num + num ]' equals: editor visibleSourceCode;
		assert: #yellow equals: (editor scriptScriptProperties at: #color).