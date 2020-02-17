categories
categoryOfElement: aScriptObject

	self flag: #remove. "mt: Deprecated."
	^ (aScriptObject valueOfProperty: #tags) asList