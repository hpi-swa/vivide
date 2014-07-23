as yet unclassified
doQueryStep: aQueryStep

	panel := self
		codeboxFor: ('"{1} - {2}', String cr, 'Next Step: {3}"', String cr, '{4}' format: {
			aQueryStep valueOfProperty: #creationAuthor.
			aQueryStep valueOfProperty: #creationTimeStamp.
			(ViLabelService doObject: aQueryStep next) asString.
			aQueryStep definition
				ifNil: []
				ifNotNil: [:def | def sourceCode]})
		inClass: nil.