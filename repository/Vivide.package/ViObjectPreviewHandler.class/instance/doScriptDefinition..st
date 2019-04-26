vivide - kernel
doScriptDefinition: def

	^ panel := self
		codeboxFor: ('"{1} - {2}"', String cr, '{3}' format: {
			def valueOfProperty: #creationAuthor.
			def valueOfProperty: #creationTimeStamp.
			def sourceCode})
		inClass: nil