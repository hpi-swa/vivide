as yet unclassified
clear

	super clear.

	self object ifNotNil: [:step |
		step definition sourceCode
			ifEmpty: [
				self script: '[:object | "Type code here..."]'.
				self selectBlockStatements]
			ifNotEmpty: [:code |
				self script: code, String cr, '-> ', self propertiesToString].
		].	

	self updateToolbars.