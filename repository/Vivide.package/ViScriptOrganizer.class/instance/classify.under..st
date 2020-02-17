categories
classify: aScriptObject under: aCategory

	self flag: #remove. "mt: Deprecated."
	aScriptObject
		setProperty: #tags
		toValue: aCategory asList.