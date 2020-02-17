vivide - kernel
doScriptPart: aStep

	^ panel := self
		codeboxFor: ('"{1} - {2}', String cr, 'Next Step: {3}"', String cr, '{4}' format: {
			aStep valueOfProperty: #creationAuthor.
			aStep valueOfProperty: #creationTimeStamp.
			(ViLabelService doObject: aStep next) asString.
			aStep definition
				ifNil: []
				ifNotNil: [:def | def sourceCode]})
		inClass: nil.