tests - single - debugging
test02AcceptErroneousScriptProperties

	"1) Make a mistake."
	script setProperty: #color toValue: #yellow.
	editor goUpToTop.
	editor visibleSourceCode: script sourceCode, '-> { .][. {'.
	self
		assert: #yellow equals: (script valueOfProperty: #color);
		shouldnt: [editor acceptSourceCode] raise: SyntaxErrorNotification;
		assert: #yellow equals: (script valueOfProperty: #color). "Still there."

	"2) Fix that mistake."
	editor visibleSourceCode: script sourceCode, '-> { #color -> #blue }'.
	self
		assert: #yellow equals: (script valueOfProperty: #color);
		shouldnt: [editor acceptSourceCode] raise: SyntaxErrorNotification;
		assert: #blue equals: (script valueOfProperty: #color).