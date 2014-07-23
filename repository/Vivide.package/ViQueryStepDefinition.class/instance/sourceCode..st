accessing
sourceCode: aString

	sourceCode = aString ifTrue: [^ self].

	sourceCode in: [:oldSourceCode |
		sourceCode := aString asString withBlanksTrimmed.
		block := nil. "invalidate cache"

		self notifier
			definitionSourceCodeChanged: self
			from: oldSourceCode to: sourceCode].