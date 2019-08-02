initialization
clearToolSet

	(self valueOfProperty: #previousToolSet) ifNotNil: [:ts |
		ToolSet default: ts].